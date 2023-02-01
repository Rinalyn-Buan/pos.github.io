function generatePDF(){
    const element = document.getElementById("sales_report");
    var opt = {
        margin:       1,
        filename:     'sale_report.pdf',
        image:        { type: 'jpeg', quality: 0.98 },
        html2canvas:  { scale: 1, scrollY: 0},
        jsPDF:        { unit: 'in', format: 'A2', orientation: 'landscape' }
      };
      
      html2pdf().set(opt).from(element).save();
}