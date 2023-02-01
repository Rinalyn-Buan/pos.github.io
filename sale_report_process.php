<?php
$page_title = 'Sales Report';
$results = '';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(3);
?>
<?php
  if(isset($_POST['submit'])){
    $req_dates = array('start-date','end-date');
    validate_fields($req_dates);

    if(empty($errors)):
      $start_date   = remove_junk($db->escape($_POST['start-date']));
      $end_date     = remove_junk($db->escape($_POST['end-date']));
      $results      = find_sale_by_dates($start_date,$end_date);
    else:
      $session->msg("d", $errors);
      redirect('sales_report.php', false);
    endif;

  } else {
    $session->msg("d", "Select dates");
    redirect('sales_report.php', false);
  }
?>
<!doctype html>
<html lang="en-US">
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <title>Point of Sales Report</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js"></script>
     <script src="libs/js/pdf.js"></script>
     <script src="libs/js/table2excel.js"></script>
   <style>
   @media print {
     html,body{
        font-size: 9.5pt;
        margin: 0;
        padding: 0;
     }.page-break {
       page-break-before:always;
       width: auto;
       margin: auto;
      }
    }
    .page-break{
      width: auto;
      margin: 0 auto;
    }
     .sale-head{
       margin: 40px 0;
       text-align: center;
     }.sale-head h1,.sale-head strong{
       padding: 10px 20px;
       display: block;
     }.sale-head h1{
       margin: 0;
       border-bottom: 1px solid #212121;
     }.table>thead:first-child>tr:first-child>th{
       border-top: 1px solid #000;
      }
      table thead tr th {
       text-align: center;
       border: 1px solid #ededed;
     }table tbody tr td{
       vertical-align: middle;
     }.sale-head,table.table thead tr th,table tbody tr td,table tfoot tr td{
       border: 1px solid #212121;
       white-space: nowrap;
     }.sale-head h1,table thead tr th,table tfoot tr td{
       background-color: #f8f8f8;
     }tfoot{
       color:#000;
       text-transform: uppercase;
       font-weight: 500;
     }
     .button {
      background-color: #4CAF50; 
      border: none;
      border-radius: 5px; 
      color: white;
      padding: 10px 32px;
      text-align: center;
      font-weight: bold;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 20px 10px;
      cursor: pointer;
     }
     .button1:hover, .button:hover{
      text-decoration: none;
      color: black;
     }
     .button1 {
      background-color: #4CAF50; 
      border: none;
      border-radius: 5px; 
      color: white;
      padding: 10px 32px;
      text-align: center;
      font-weight: bold;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin-left: 80%;
      cursor: pointer;
     }
     #excel {
      background-color: #4CAF50; 
      border: none;
      border-radius: 5px; 
      color: white;
      padding: 10px 32px;
      text-align: center;
      font-weight: bold;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin-left: 80%;
      cursor: pointer;
     }
     #excel:hover{
      text-decoration: none;
      color: black;
     }
   </style>
</head>
<body>
  <?php if($results): ?>
    <a href="sales_report.php" class="button"></style>Back</a>
    <button id="excel">Excel</button>
    <form action="" id="sales_report">
    <div class="page-break">
       <div class="sale-head">
           <h1>POS of Computer Hardware - Sales Report</h1>
           <strong><?php if(isset($start_date)){ echo $start_date;}?> TILL DATE <?php if(isset($end_date)){echo $end_date;}?> </strong>
       </div>
      <table class="table table-border" id="export_excel">
        <thead>
          <tr>
              <th>Date</th>
              <th>Product Title</th>
              <th>Buying Price</th>
              <th>Selling Price</th>
              <th>Total Qty</th>
              <th>TOTAL</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach($results as $result): ?>
           <tr>
              <td class=""><?php echo remove_junk($result['date']);?></td>
              <td class="desc">
                <h6><?php echo remove_junk(ucfirst($result['name']));?></h6>
              </td>
              <td class="text-right"><?php echo remove_junk($result['buy_price']);?></td>
              <td class="text-right"><?php echo remove_junk($result['sale_price']);?></td>
              <td class="text-right"><?php echo remove_junk($result['total_sales']);?></td>
              <td class="text-right"><?php echo remove_junk($result['total_saleing_price']);?></td>
          </tr>
        <?php endforeach; ?>
        </tbody>
        <tfoot>
         <tr class="text-right">
           <td colspan="4"></td>
           <td colspan="1">Grand Total</td>
           <td> ₱
           <?php echo number_format(total_price($results)[0], 2);?>
          </td>
         </tr>
         <tr class="text-right">
           <td colspan="4"></td>
           <td colspan="1">Profit</td>
           <td> ₱ <?php echo number_format(total_price($results)[1], 2);?></td>
         </tr>
        </tfoot>
      </table>
      <script>
          document.getElementById('excel').addEventListener('click', function() {
          var table2excel = new Table2Excel();
          table2excel.export(document.querySelectorAll("#export_excel"));
        });
      </script> 
    </div>
    </form>
  <?php
    else:
        $session->msg("d", "Sorry no sales has been found. ");
        redirect('sales_report.php', false);
     endif;
  ?>
</body>
</html>
<?php if(isset($db)) { $db->db_disconnect(); } ?>
