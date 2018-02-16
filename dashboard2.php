<?php
	$userid = "";
	$adminstatus = 3;
	$property_manager_id = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
	}
	$expense_month = date("m");
	$expense_year = date("Y");

	//if($adminstatus != 1 || $adminstatus != 2 || $adminstatus != 4){
	if($adminstatus == 3){
		include_once('includes/header.php');
		$query = "login.php";
		?>
		<script type="text/javascript">
			document.location = "<?php echo $query ?>";
		</script>
		<?php
	}
	else{
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "Dashboard";
		include_once('includes/header.php');
		include_once('includes/graphs.php');
		$today = date("F j, Y");
		$rent_period = date("F, Y");
		$sql = mysql_query("select fname, lname from users where id = '$userid'");
		while($row = mysql_fetch_array($sql)) {
			$first_name = $row['fname']; 
			$last_name = $row['lname'];
		}
		?>		
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?></h2>
					<!--<p><img src="images/content-image.jpg" width="1100" height="200" alt="" /></p>-->					
					Welcome <?php echo $first_name.' '.$last_name ?><br />
					<strong>You are here:</strong> &raquo; <a href="index.php">Home</a> &raquo; Dashboard<br /><br />
					<table width="100%" cellpadding="0" cellspacing="0">
					
						<tr>
							<td width="70%">
								<div class='example awesome'>
								  <p align="left"><strong>Height Buckets</strong></p>
								 	<div id="piechart" style="width: 750px; height: 350px;"></div>

								</div> 
							</td>
							<td width="30%">
								<div class='example awesome'>
								  <p align="left"><strong>Models Gender Buckets</strong></p>
								  <div id='models_tracking' class='graph' style='width: 350px; height: 240px;'></div>
								</div>
							</td>
							
							
						</tr>
						<tr>
							<td colspan="3">
								<p>&nbsp;</p>
							</td>
						</tr>						
						<tr>
							<td width="70%">
								<div class='example awesome'>
								  <p align="left"><strong>Hotness Bucket</strong></p>
								 	<div id="piechart2" style="width: 750px; height: 350px;"></div>

								</div> 
							</td>
							<td width="30%">
								<div class='example awesome'>
								  <p align="left"><strong>Models Gender Buckets</strong></p>
								  <div id='payments_tracking' class='graph' style='width: 350px; height: 240px;'></div>
								</div>
							</td>
						</tr>
					
					</table>
					</p>
				</div>
			</div>
			<br class="clearfix" />
			</div>
		</div>
<?php
	}
	include_once('includes/footer.php');
?>
