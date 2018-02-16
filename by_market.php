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
			$page_title = "Daily Report by Market";
			$filter_start_date_full = date("d M, Y", strtotime($filter_start_date));
			$filter_end_date_full = date("d M, Y", strtotime($filter_end_date));
			$market_name = ucwords(strtolower($filter_market));
			
		?>
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?>: <?php echo $market_name ?> Sub County</h2>
					<h3>Sales By Market: Filtered Results</h3>
					<p>Report Date Range: <?php echo $filter_start_date_full ?> to <?php echo $filter_end_date_full ?></p>
					<table width="100%" border="0" cellspacing="2" cellpadding="2" class="display" id="xample">
					<thead bgcolor="#E6EEEE">
						
							
							<?php
							$sql = mysql_query("SELECT DISTINCT subcategory FROM `statements`");
							while ($row = mysql_fetch_array($sql))
							{
								$subcategory = $row['subcategory'];
								echo "<tr>";
								//echo "<th>#</th>";
								echo "<th>$subcategory</th>";
								echo "<th>Amount</th>";
								echo "</tr>";
								//echo "</thead>";
								//echo "<tbody>";
								$sql2 = mysql_query("SELECT DISTINCT clerk, users.fname, users.lname, SUM(invoice_amount)invoice_amount FROM `statements` INNER JOIN `users` ON `users`.id = `statements`.logged_by WHERE subcategory = '$subcategory' AND paid_date between '$filter_start_date' and '$filter_end_date' and status = 'Paid' GROUP BY clerk");
							 	$total_invoice = 0;
								while ($row = mysql_fetch_array($sql2))
							 	{
									$intcount++;
									$clerk = $row['clerk'];
									$clerk = ucwords(strtolower($clerk));
									$fname = $row['fname'];
									$lname = $row['lname'];
									$name = $clerk." - ".$fname." ".$lname;
									$invoice_amount = $row['invoice_amount'];
							
									if ($intcount % 2 == 0) {
									$display= '<tr bgcolor = #F0F0F6>';
									}
									else {
										$display= '<tr>';
									}
									echo $display;
									echo "<td valign='top'>$name</td>";
									echo "<td valign='top' align='right'>KES ".number_format($invoice_amount, 2)."</td>";
									$total_invoice = $total_invoice + $invoice_amount;
								echo "</tr>";
								
								}
								echo "<tr bgcolor = '#E6EEEE'>";
								echo "<td ><strong>&nbsp;</strong></td>";
								echo "<td align='right' valign='top'><strong>KES ". number_format($total_invoice, 2)."</strong></td>";
								echo "</tr>";	
								
							}
							?>
							</tbody>
						
						
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
							<td >
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
