<?php
	$userid = "";
	$adminstatus = 3;
	$property_manager_id = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
		$property_manager_id = $_SESSION["property_manager_id"] ;
	}

	//if($adminstatus != 1 || $adminstatus != 2 || $adminstatus != 4){
	if($adminstatus == 3){
		include_once('includes/header.php');
		?>
		<script type="text/javascript">
			document.location = "login.php";
		</script>
		<?php
	}
	else{
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "Home";
		include_once('includes/header.php');
		?>		
		<div id="page">
			<div id="content">
				<div class="post">
					<h2>The Complete Dashboard and Reporting Solution</h2>
					<p> Data is useless when it’s spread throughout your organization in emails, sitting in disparate systems, or trapped in excel sheets and antiquated databases. An integrated Business Intelligence solution is about getting the information you need in the right format to the right people at the right time. It’s a set of applications and technologies designed to gather, store, analyze and deliver data. And it empowers every employee – from senior executives, to analysts, to business unit managers, to front-line staff – by supplying them with vital information so they can work better, faster and smarter.</p>
				</div>
			</div>
			<br class="clearfix" />
			</div>
		</div>
<?php
	}
	include_once('includes/footer.php');
?>
