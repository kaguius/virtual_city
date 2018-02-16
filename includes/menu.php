<?php
	$userid = "";
	$adminstatus = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
	}
?>
<div id="menu">
	<ul>
		<li><a href="dashboard.php">Dashboard</a></li>
		<!--<li><a href="dashboard.php" title="System Dashboard">Kiambu Market</a></li>-->
		<li><a href="#" title="By Clerk Report">Reports</a></li>
		<li><a href="maps.php" title="Map">Map</a></li>
		<li><a href="admin.php" title="Admin">Admin</a></li>-->
		<li><a href="logout.php" title="Log Out">Log Out</a></li>
	</ul>
	<br class="clearfix" />
</div>
