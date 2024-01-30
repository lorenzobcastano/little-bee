import { Controller } from "@hotwired/stimulus"
import { jsPDF } from "jspdf";

export default class extends Controller {
  generatePDF(){
    const data = document.getElementById("print")
    this.doc.html(data.innerText).save("test.pdf")
  }
  connect() {

    // Default export is a4 paper, portrait, using millimeters for units
    this.doc = new jsPDF("p");

    //this.doc.text("Hello world!", 10, 10);
  }
}
