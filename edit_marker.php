<?php
	$userid = "";
	$adminstatus = "";
	session_start();
	if (!empty($_SESSION)){
		$userid = $_SESSION["userid"] ;
		$adminstatus = $_SESSION["adminstatus"] ;
		$sacco_id = $_SESSION["sacco_id"] ;
	}
	if($adminstatus == 3){
		include_once('includes/header.php');
		?>
		<script type="text/javascript">
			document.location = "insufficient_permission.php";
		</script>
		<?php
	}
	else{
		include_once('includes/db_conn.php');
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "User Profiles";
		if (!empty($_GET)){	
			$page_title = "Edit Marker";
			$action = $_GET['action'];
			$marker_id = $_GET['id'];
			if ($action=='edit'){
				$page_title = "Edit Place Marker";
				$result = mysql_query("select id, name, address, lat, lng, type from markers where id = '$marker_id'");
				while ($row = mysql_fetch_array($result))
				{
					$id = $row['id'];
					$name = $row['name'];
					$name = ucwords(strtolower($name));
					$address = $row['address'];
					$lat = $row['lat'];
					$lng = $row['lng'];
					$type = $row['type'];
				}
			}
		}
		include_once('includes/header.php');
		?>		
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?></h2>
					<form id="frmUserProfiles" name="frmUserProfiles" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
						<input type="hidden" name="page_status" id="page_status" value="<?php echo $action ?>" />
						<input type="hidden" name="marker_id" id="marker_id" value="<?php echo $marker_id ?>" />
						<table border="0" width="100%">
							<tr >
								<td width="30%">Name *</td>
								<td width="70%">
									<input title="Enter Name" value="<?php echo $name ?>" id="name" name="name" type="text" maxlength="100" class="main_input" size="20" />
								</td>

							</tr>
							<tr>
								<td >Address *</td>
								<td>
									<input title="Enter Address" class="main_input" value="<?php echo $address ?>" id="address" name="address" type="text" maxlength="100" size="20" />
								</td>

							</tr>
							<tr>
								<td >Latitude *</td>
								<td>
									<input title="Enter Latitude" class="main_input" value="<?php echo $lat ?>" id="lat" name="lat" type="text" maxlength="100" size="20" />
								</td>

							</tr>
							<tr>
								<td >Longitude *</td>
								<td>
									<input title="Enter Longitude" class="main_input" value="<?php echo $lng ?>" id="lng" name="lng" type="text" maxlength="100" size="20" />
								</td>

							</tr>
							<tr>
								<td >Type *</td>
								<td>
									<input title="Enter Type" class="main_input" value="<?php echo $type ?>" id="type" name="type" type="text" maxlength="100" size="20" />
								</td>

							</tr>
						</table>
			
						<table border="0" width="100%">
							<tr>
								<td valign="top">
									<button name="btnNewCard" id="button">Save</button>
								</td>
								<td align="right">
									<button name="reset" id="button2" type="reset">Reset</button>
								</td>		
							</tr>
						</table>
						<script  type="text/javascript">
							var frmvalidator = new Validator("frmUserProfiles");
							frmvalidator.addValidation("first_name","req","Please enter the User's First Name");
							frmvalidator.addValidation("last_name","req","Please enter the User's Last Name");
							frmvalidator.addValidation("email_address","req","Please enter User's Email Address");
							frmvalidator.addValidation("phone_number","req","Please enter the user's Phone Number");
							frmvalidator.addValidation("admin_status","req","Please enter the user's System status");
						</script>
					</form>
				</div>
			</div>
			<br class="clearfix" />
			</div>
		</div>
		<?php
			if (!empty($_POST)) {
				$name=$_POST['name'];
				$address=$_POST['address'];
				$lat=$_POST['lat'];
				$lng=$_POST['lng'];
				$type=$_POST['type'];
				
				$page_status = $_POST['page_status'];
				$marker_id = $_POST['marker_id'];
				
				if($page_status == 'edit'){
					$sql3="
						update markers set name='$name', address='$address', lat='$lat', lng='$lng', type='$type' WHERE ID  = '$marker_id'";
					$result = mysql_query($sql3);
					//echo $sql3;
				}
				?>
					<script type="text/javascript">
					<!--
						document.location = "maps.php";
					//-->
					</script>
					<?php
			}				
			
	}
?>
<?php
	include_once('includes/footer.php');
?>
