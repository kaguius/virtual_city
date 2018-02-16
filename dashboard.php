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
		$filter_start_date = "";
		$filter_end_date = "";
		$filter_market = "";
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "Dashboards: Daily Report Templates";
		include_once('includes/header.php');
		
		if (!empty($_GET)){	
			$filter_start_date = $_GET['report_start_date'];
			$filter_start_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_start_date)));
			$filter_end_date = $_GET['report_end_date'];
			$filter_end_date = date('Y-m-d', strtotime(str_replace('-', '/', $filter_end_date)));
			$filter_market = $_GET['market'];
		}
		include_once('includes/db_conn.php');
		if ($filter_start_date != "1970-01-01" && $filter_end_date != "1970-01-01"){
			$page_title = "Dashboards: Daily Report Templates";
			include_once('includes/graphs.php');
			$filter_start_date = date("d M, Y", strtotime($filter_start_date));
			$filter_end_date = date("d M, Y", strtotime($filter_end_date));
			$market_name = ucwords(strtolower($filter_market));
			
		?>
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?>: <?php echo $market_name ?></h2>
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td width="100%">
								<div class='example awesome'>
							  	<p align="left"><strong>Monthly Activations: Filtered Results</strong></p>
							  	<div id="chart_div" style="width: 1100px; height: 500px;"></div>

								</div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td width="100%">
								<table width="100%" border="0" cellspacing="2" cellpadding="2" class="display" id="example">
								<thead bgcolor="#E6EEEE">
									<tr>
										<th>#</th>
										<th>Month</th>
										<th>Activations</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>June</td>
										<td>3.00</td>
									</tr>
								</tbody>
								<tfoot bgcolor="#E6EEEE">
									<tr>
										<th>#</th>
										<th>Month</th>
										<th>Activations</th>
									</tr>
								</tfoot>
								</table>
							</td>
						</tr>
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
							<tr>
								<td><button name="btnNewCard" id="button">Submit</button></td>
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
