import { Controller } from "@hotwired/stimulus";
import { jsPDF } from "jspdf";

export default class extends Controller {
  generatePDF() {
    const data = document.getElementById("print");
    const { doc } = this;

    // Set font style
    doc.setFont("Arial", "normal");

    // Set font size
    doc.setFontSize(14);

    // Set initial position
    let yPosition = 20;

    // Add header
    doc.text("Sell Details", 20, yPosition);
    yPosition += 10;

    // Add separator line
    doc.setLineWidth(0.5);
    doc.line(20, yPosition, 190, yPosition);
    yPosition += 10;

    if (data) {
      // Iterate over each element
      data.querySelectorAll("h6, p").forEach((element) => {
        const lines = element.innerText.split(/\r?\n/);

        lines.forEach((line) => {
          // Add each line to the PDF
          doc.text(line, 20, yPosition);
          yPosition += 8; // Adjust line height
        });
      });
    }

    // Save PDF with a timestamp as the filename
    const timestamp = new Date().toISOString().replace(/[-:.]/g, "");
    const filename = `sell_details_${timestamp}.pdf`;
    doc.save(filename);
  }

  connect() {
    // Initialize jsPDF
    this.doc = new jsPDF("p", "mm", "a4");

    // Default export is a4 paper, portrait, using millimeters for units
    // this.doc.text("Hello world!", 10, 10);
  }
}
