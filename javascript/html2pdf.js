/**
 * html2pdf.js
 *
 * Convert HTML pages to PDF.
 * The PDF can be forced to a single page by setting forceSinglePage to true.
 *
 * @requires Node.js (https://nodejs.org/)
 * @requires puppeteer (npm install puppeteer)
 * @requires poppler (brew install poppler) - for pdfinfo
 *
 * @usage node html2pdf.js https://github.com/NicHub/stewart-platform-esp32
 *
 * See also:
 * https://stackoverflow.com/questions/70126314/how-to-create-a-single-page-pdf-from-a-html-file
 */

"use strict";

import { exec } from "child_process";
import path from "path";
import puppeteer from "puppeteer";
import fs from "fs";

const forceSinglePage = true;
const forceFileNameToAnnonce = false;
const pdfInitialHeight = 29.7;
let pdfHeight = pdfInitialHeight;
const pdfWidth = 21;
const margin = "2cm 1cm 2cm;";
const marginInitial = "0 1cm 0";

const fnameIn = process.argv[2];
if (!fnameIn) {
    console.error("Usage: node html2pdf.js htmlfile.html");
    process.exit(1);
}

const template1 = `
<div style="font-family:'Consolas', monospace; font-size:10px; text-align:center; width:100%; margin-bottom:0.5cm;">
    Page <span class="pageNumber"></span> of <span class="totalPages"></span><br>
    <span class="date"></span><br>
    <a href='${fnameIn}'>${fnameIn}</a><br>
</div>`;
const template2 = `<div></div>`;
const headerTemplate = template1;
const footerTemplate = template1;

const today = new Date().toISOString().split("T")[0];
const fnameOutBase = forceFileNameToAnnonce
    ? `${today}-annonce`
    : path.basename(fnameIn, path.extname(fnameIn));
const fnameOutExt = ".pdf";
let fnameOut = fnameOutBase + fnameOutExt;
let counter = 1;
while (fs.existsSync(fnameOut)) {
    fnameOut = `${fnameOutBase}-${counter}${fnameOutExt}`;
    counter++;
}
fnameOut = path.resolve(fnameOut);

async function printToPDF(fnameIn, fnameOut) {
    console.log();

    // Check if the input file exists.
    if (!fnameIn.startsWith("http") && !fs.existsSync(fnameIn)) {
        throw new Error(`File ${fnameIn} doesn’t exist`);
    }

    // Launch the browser.
    const browser = await puppeteer.launch();

    // Create a new page.
    const page = await browser.newPage();

    if (fnameIn.startsWith("http")) {
        // For URLs, navigate directly to the page.
        await page.goto(fnameIn, {
            waitUntil: "networkidle0",
        });
    } else {
        // For local files, read the content and set it.
        const htmlContent = fs.readFileSync(fnameIn, "utf-8");
        await page.setContent(htmlContent, {
            waitUntil: "networkidle0",
        });
    }

    let pageCount;
    let initialPageCount;
    let cnt = 0;
    do {
        cnt++;
        const customCSS = `
        @page {
        size: ${pdfWidth}cm ${pdfHeight}cm;
        margin: ${cnt === 1 ? marginInitial : margin};
        }`;

        // Inject custom CSS.
        await page.addStyleTag({ content: customCSS });

        // Generate the PDF.
        const pdfBuffer = await page.pdf({
            path: fnameOut,
            printBackground: true,
            preferCSSPageSize: true,
            displayHeaderFooter: true,
            headerTemplate: `${headerTemplate}`,
            footerTemplate: `${footerTemplate}`,
            margin: {
                top: "70px",
                bottom: "70px",
            },
        });

        // Get the number of pages in the generated PDF.
        pageCount = await new Promise((resolve, reject) => {
            exec(
                `pdfinfo "${fnameOut}" | grep Pages | awk '{print $2}'`,
                (error, stdout, stderr) => {
                    if (error) reject(error);
                    resolve(parseInt(stdout.trim()));
                }
            );
        });
        console.log(` - Current number of pages         : ${pageCount}`);
        if (cnt === 1) initialPageCount = pageCount;

        // If forceSinglePage is set to true, the PDF
        // will be generated again with the needed height.
        if (cnt >= 10) throw new Error("Too many iterations.");
        if (pageCount === 1) break;
        if (!forceSinglePage) break;
        pdfHeight = pdfInitialHeight * initialPageCount * 0.92 + cnt;
        console.log(` - pdfHeight                       : ${pdfHeight}`);
        continue;
    } while (true);

    console.log(
        ` - pdfHeight / initialPageCount    : ${pdfHeight / initialPageCount}`
    );

    // Close the browser.
    await browser.close();

    console.log(` - HTML file                       : ${fnameIn}`);
    console.log(` - PDF file                        : file://${fnameOut}`);
    console.log();

    // Open the generated PDF with default application.
    const platform = process.platform;
    const command =
        platform === "darwin"
            ? "open"
            : platform === "win32"
            ? "start"
            : "xdg-open";
    exec(`${command} "${fnameOut}"`);
}

try {
    printToPDF(fnameIn, fnameOut);
} catch (error) {
    console.error(`- Error while generating PDF: ${error}\n`);
}
