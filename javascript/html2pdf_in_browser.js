/**
 * This snippet ajusts print dimensions to create a single-page PDF with:
 * - width = A4 width (21cm)
 * - height = heightMultiplier * A4 height (29.7cm)
 *
 * Usage:
 * 1. Check the initial page count in browser’s print dialog.
 * 2. Adjust `heightMultiplier` variable in snippet to match page count.
 * 3. Run the snippet in browser console (F12).
 *
 * Notes:
 * - Optimal `heightMultiplier` is often less than the initial page count
 *   due to removal of inter-page margins.
 * - `heightMultiplier` accepts decimal values.
 * - Settings persist until page refresh.
 * - Values are for A4 but can be easily modified.
 */
heightMultiplier = 2.5;
document.head
    .appendChild(document.createElement("style"))
    .sheet.insertRule(`@page { size: 21cm ${heightMultiplier * 29.7}cm; }`, 0);
window.print();

/*

Page qui bloque ce script
https://prestations.vd.ch/pub/101660/PMDDE1-FLM88R/recapitulatif-taxation?transmitting=true&scrollTo=checkAndTransmit

*/
/*
heightMultiplier = 5;
document.head
    .appendChild(document.createElement("style"))
    .sheet.insertRule(`@page { size: 21cm ${heightMultiplier * 29.7}cm; }`, 0);
window.print();

VM156:3 Applying inline style violates the following Content Security Policy directive 'style-src 'self' 'nonce-3HeFb9RWr/ZbB5nJpvo2wOMlWijvsRAgH8EkJhnrbGqrMYpzZQEOrS90wJXuUWPmbUQNwLIbtspYbGsNYAjHqxLYga9LtkO9bbLgYFOk6lgS0A8B1ew+q50HDfl6/pWhPvpOpnojIF4Q2X3DYWP1UhoN+JD08jv38FB5ezK2ICc=''. Either the 'unsafe-inline' keyword, a hash ('sha256-47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU='), or a nonce ('nonce-...') is required to enable inline execution. The action has been blocked.
(anonymous) @ VM156:3
VM156:4 Uncaught TypeError: Cannot read properties of null (reading 'insertRule')
    at <anonymous>:4:11
(anonymous) @ VM156:4
*/
