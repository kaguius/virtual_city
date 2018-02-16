<?php
	$userid = "";
	$adminstatus = 3;
	$property_manager_id = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
	}

	//if($adminstatus != 1 || $adminstatus != 2 || $adminstatus != 4){
	if($adminstatus == 3){
		include_once('includes/header.php');
		?>
		<script type="text/javascript">
			document.location = "insufficient_permission.php";
		</script>
		<?php
	}
	else{
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "Sales By Market";
		include_once('includes/header.php');
		if (!empty($_GET)){	
			$filter_start_date = $_GET['report_start_date'];
			$filter_start_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_start_date)));
			$filter_end_date = $_GET['report_end_date'];
			$filter_end_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_end_date)));
			$filter_market = $_GET['market'];
		}
		include_once('includes/db_conn.php');
		if ($filter_start_date != "1970-01-01" && $filter_end_date != "1970-01-01" && $filter_market != ""){
			$page_title = "Daily Report by Market Fees Type";
			$filter_start_date_full = date("d M, Y", strtotime($filter_start_date));
			$filter_end_date_full = date("d M, Y", strtotime($filter_end_date));
			$market_name = ucwords(strtolower($filter_market));
		?>
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?>: <?php echo $market_name ?> Sub County</h2>
					<h3>Sales By Market Fee Type: Filtered Results</h3>
					<p>Report Date Range: <?php echo $filter_start_date_full ?> to <?php echo $filter_end_date_full ?></p>
					<table width="100%" border="0" cellspacing="2" cellpadding="2" class="display" id="example">
						<thead bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Market Fee Type</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody>
						<?php
						 $sql = mysql_query("SELECT DISTINCT product, SUM(invoice_amount)invoice_amount FROM `statements` WHERE paid_date between '$filter_start_date' and '$filter_end_date' and status = 'Paid' GROUP BY product ORDER BY product ASC");
						 $total_invoice = 0;
						 while ($row = mysql_fetch_array($sql))
						 {
							$intcount++;
							$product = $row['product'];
							$invoice_amount = $row['invoice_amount'];
							
							if ($intcount % 2 == 0) {
								$display= '<tr bgcolor = #F0F0F6>';
							}
							else {
								$display= '<tr>';
							}
							echo $display;
							echo "<td valign='top'>$intcount.</td>";
							echo "<td valign='top'>$product</td>";
							echo "<td valign='top' align='right'>KES ".number_format($invoice_amount, 2)."</td>";
							echo "</tr>";
							$total_invoice = $total_invoice + $invoice_amount;	
						}
						?>
						</tbody>
						<tr bgcolor = '#E6EEEE'>
							<td colspan='2'><strong>&nbsp;</strong></td>
							<td align='right' valign='top'><strong>KES <?php echo number_format($total_invoice, 2) ?></strong></td>
						</tr>
						<tfoot bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Market Fee Type</th>
								<th>Amount</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
			<br class="clearfix" />
			</div>
		</div>
		<?php
		}
		else{
		if (!empty($_GET)){	
			$filter_market = $_GET['market'];
		}
		$market_name = ucwords(strtolower($filter_market));	
		?>		
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?>: <?php echo $market_name ?> Sub County</h2>
					<form id="frmCreateTenant" name="frmCreateTenant" method="GET" action="<?php echo $_SERVER['PHP_SELF'];?>">
					<table border="0" width="100%" cellspacing="2" cellpadding="2">					<tr >
								<td  valign="top">Select the Start Date Range: </td>
								<td>
									<input title="Enter the Selection Date" value="<?php echo $report_start_date ?>" id="report_start_date" name="report_start_date" type="text" maxlength="100" class="main_input" size="15" />
								</td>
								<td  valign="top">Select the End Date Range:</td>
								<td> 
									<input title="Enter the Selection Date" value="<?php echo $report_end_date ?>" id="report_end_date" name="report_end_date" type="text" maxlength="100" class="main_input" size="15" />
									<input value="<?php echo $filter_market ?>" id="market" name="market" hidden type="text" class="main_input" size="15" />
								</td>
								
							</tr>
						</table>
					
					<table border="0" width="100%">
						<tr>
							<td>
								<button name="btnNewCard" id="button">Search</button>
							</td>		
						</tr>
					</table>
					</form>
				</div>
			</div>
			<br class="clearfix" />
			</div>
		</div>
<?php
		}
	}
	include_once('includes/footer.php');
?>
