<?php
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$admin_status = $_SESSION["adminstatus"];
		$property_manager_id = $_SESSION["property_manager_id"] ;
	}
	// or this would remove all the variables in the session, but not the session itself 
	session_unset(); 
	// this would destroy the session variables 
	session_destroy();
?>
<script type="text/javascript">
<!--
	document.location = "login.php";
//-->
</script>
