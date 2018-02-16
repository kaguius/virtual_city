<?php
	$userid = "";
	$adminstatus = 3;
	$property_manager_id = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
	}
	include_once('includes/db_conn.php');
	$expense_month = date("m");
	$expense_year = date("Y");
	if (!empty($_GET)){	
		$filter_start_date = $_GET['report_start_date'];
		$filter_start_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_start_date)));
		$filter_end_date = $_GET['report_end_date'];
		$filter_end_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_end_date)));
	}
?>
<script type="text/javascript">
      $(document).ready(function () {      
	
	jQuery('#models_tracking').tufteBar({
          data: [
			<?php
				//$result_tender = mysql_query("select distinct calender.month, count(reg_month)reg_month from members_table inner join calender on calender.id = members_table.reg_month group by members_table.reg_month order by reg_year, reg_month asc");
				$result_tender = mysql_query("SELECT DISTINCT clerk, SUM(invoice_amount)invoice_amount FROM `statements` WHERE paid_date between '$filter_start_date' and '$filter_end_date' and status = 'Paid' GROUP BY clerk;");
				echo "";
				$intcount = 0;
				$data_count_total = 0;
				while ($row = mysql_fetch_array($result_tender))
				{
					$intcount++;
					$clerk = $row['clerk'];
					$invoice_amount = $row['invoice_amount'];
					$clerk = ucwords(strtolower($clerk));
					?>
					[<?php echo $invoice_amount?>, {label: '<?php echo $clerk ?>'}],
					<?php
				}
			?>
          ],
          barWidth: 0.8,
          axisLabel: function(index) { return this[1].label },
          color:     function(index) { return ['#71BF00', '#2F9E3A'][index % 2] }
        });
	
	jQuery('#payments_tracking').tufteBar({
          data: [
			<?php
				$result_tender = mysql_query("SELECT DISTINCT product, SUM(invoice_amount)invoice_amount FROM `statements` WHERE paid_date between '$filter_start_date' and '$filter_end_date' and status = 'Paid' GROUP BY product ORDER BY product ASC");
				while ($row = mysql_fetch_array($result_tender))
				{
					$intcount++;
					$product = $row['product'];
					$invoice_amount = $row['invoice_amount'];
					?>
					[<?php echo $invoice_amount?>, {label: '<?php echo $product ?>'}],
					<?php
				}
			?>
          ],
          barWidth: 0.8,
          axisLabel: function(index) { return this[1].label },
          color:     function(index) { return ['#71588F', '#0B3B0B'][index % 2] }
        });

      });
    </script>
    
     <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Month', 'Activations'],
          ['June',  3],
        ]);

        var options = {
		legend: { position: 'bottom' },
    		backgroundColor: '#F0F1F1',
    		chartArea:{left:70,top:10,width:'90%',height:'75%'},
    		hAxis: {title: 'Month',  titleTextStyle: {color: '#333'}},
		vAxis: {title: 'Activations',  titleTextStyle: {color: '#333'}},
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>

