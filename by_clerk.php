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
		$page_title = "Sales By Clerk";
		include_once('includes/header.php');
		if (!empty($_GET)){	
			$filter_clerk = $_GET['clerk'];
			$filter_start_date = $_GET['report_start_date'];
			$filter_start_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_start_date)));
			$filter_end_date = $_GET['report_end_date'];
			$filter_end_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_end_date)));
			$filter_market = $_GET['market'];
		}
		include_once('includes/db_conn.php');
		if ($filter_clerk != "" && $filter_start_date != "1970-01-01" && $filter_end_date != "1970-01-01" && $filter_market != ""){
			$page_title = "Daily Report by Collector/Clerk";
			$sql = mysql_query("SELECT fname, lname FROM `users` WHERE id = '$filter_clerk'");
			while ($row = mysql_fetch_array($sql))
			{
				$fname = $row['fname'];
				$lname = $row['lname'];
				$name = $fname." ".$lname;
			}
			$market_name = ucwords(strtolower($filter_market));
			
		?>
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?>: <?php echo $market_name ?> Sub County</h2>
					<h3>Sales By Clerk: <?php echo $name ?>, Filtered Results</h3>
					<table width="100%" border="0" cellspacing="2" cellpadding="2" class="display" id="example">
						<thead bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Inv. Ref</th>
								<th>Invoice Date</th>
								<th>Market Fee Type</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody>
						<?php
						 $sql = mysql_query("SELECT invoice_ref, product, invoice_amount, clerk, logged_by, paid_date, users.fname, users.lname FROM statements INNER JOIN `users` ON `users`.id = `statements`.logged_by WHERE logged_by = '$filter_clerk' AND paid_date between '$filter_start_date' and '$filter_end_date' and status = 'Paid' ORDER BY logged_by");
						 $total_invoice = 0;
						 while ($row = mysql_fetch_array($sql))
						 {
							$intcount++;
							$invoice_ref = $row['invoice_ref'];
							$product = $row['product'];
							$invoice_amount = $row['invoice_amount'];
							$clerk = $row['clerk'];
							$clerk = ucwords(strtolower($clerk));
							$paid_date = $row['paid_date'];
							$paid_date = date("d M, Y", strtotime($paid_date));
							$fname = $row['fname'];
							$lname = $row['lname'];
							$name = $clerk." - ".$fname." ".$lname;
							
							if ($intcount % 2 == 0) {
								$display= '<tr bgcolor = #F0F0F6>';
							}
							else {
								$display= '<tr>';
							}
							echo $display;
							echo "<td valign='top'>$intcount.</td>";
							echo "<td valign='top'>$invoice_ref</td>";
							echo "<td valign='top'>$paid_date</td>";
							echo "<td valign='top'>$product</td>";
							echo "<td valign='top' align='right'>KES ".number_format($invoice_amount, 2)."</td>";
							echo "</tr>";
							$total_invoice = $total_invoice + $invoice_amount;	
						}
						?>
						</tbody>
						<tr bgcolor = '#E6EEEE'>
							<td colspan='4'><strong>&nbsp;</strong></td>
							<td align='right' valign='top'><strong>KES <?php echo number_format($total_invoice, 2) ?></strong></td>
						</tr>
						<tfoot bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Inv. Ref</th>
								<th>Invoice Date</th>
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
					<table border="0" width="100%" cellspacing="2" cellpadding="2">					<tr  bgcolor = #F0F0F6 width="50%">
								<td  valign="top">Clerk Name</td>
								<td><select name='clerk' id='clerk'>
									<option value=''> </option>
								<?php
									$sql2 = mysql_query("SELECT DISTINCT clerk, users.fname, users.lname, logged_by FROM `statements` INNER JOIN `users` ON `users`.id = `statements`.logged_by ORDER BY clerk ASC");
									while($row = mysql_fetch_array($sql2)) {
										$clerk_id = $row['logged_by'];
										$clerk_username = $row['clerk'];
										$clerk_fname = $row['fname'];
										$clerk_lname = $row['lname'];
	echo "<option value='$clerk_id'>".$clerk_fname." ".$clerk_fname." - ".$clerk_username."</option>"; 					}
									?>
								</select>
								</td>
							</tr>
							<tr >
								<td  valign="top">Select the Start Date Range: </td>
								<td>
									<input title="Enter the Selection Date" value="<?php echo $report_start_date ?>" id="report_start_date" name="report_start_date" type="text" maxlength="100" class="main_input" size="15" />
								</td>
							</tr>
							<tr  bgcolor = #F0F0F6 width="50%">
								<td  valign="top">Select the End Date Range:</td>
								<td> 
									<input title="Enter the Selection Date" value="<?php echo $report_end_date ?>" id="report_end_date" name="report_end_date" type="text" maxlength="100" class="main_input" size="15" />
									<input value="<?php echo $filter_market ?>" id="market" name="market" hidden type="text" class="main_input" size="15" />
								</td>
								
							</tr>
							<tr>
								<td><button name="btnNewCard" id="button">Search</button></td>
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
