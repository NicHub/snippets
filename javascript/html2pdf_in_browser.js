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
