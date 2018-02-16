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
		include_once('includes/db_conn.php');
		$transactiontime = date("Y-m-d G:i:s");
		$page_title = "Map";
		include_once('includes/header.php');
		?>
		<script type="text/javascript">
		    //<![CDATA[

		    var customIcons = {
		      restaurant: {
		    	icon: 'http://labs.google.com/ridefinder/images/mm_20_blue.png',
		    	shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
		      },
		      bar: {
			icon: 'http://labs.google.com/ridefinder/images/mm_20_red.png',
			//icon: 'http://simpleicon.com/wp-content/uploads/map-marker-13.png',
			shadow: 'http://labs.google.com/ridefinder/images/mm_20_shadow.png'
			
		      }
		   }


		    function load() {
		      var map = new google.maps.Map(document.getElementById("map"), {
			center: new google.maps.LatLng(-1.29206, 36.82194),
			zoom: 13,
			mapTypeId: 'roadmap'
		      });
		      var infoWindow = new google.maps.InfoWindow;

		      // Change this depending on the name of your PHP file
		      downloadUrl("includes/phpsqlajax_genxml3.php", function(data) {
			var xml = data.responseXML;
			var markers = xml.documentElement.getElementsByTagName("marker");
			for (var i = 0; i < markers.length; i++) {
			  var name = markers[i].getAttribute("name");
			  var address = markers[i].getAttribute("address");
			  var type = markers[i].getAttribute("type");
			  var point = new google.maps.LatLng(
			      parseFloat(markers[i].getAttribute("lat")),
			      parseFloat(markers[i].getAttribute("lng")));
			  var html = "<b>" + name + "</b> <br/>" + address;
			  var icon = customIcons[type] || {};
			  var marker = new google.maps.Marker({
			    map: map,
			    position: point,
			    icon: icon.icon,
			    shadow: icon.shadow
			  });
			  bindInfoWindow(marker, map, infoWindow, html);
			}
		      });
		    }

		    function bindInfoWindow(marker, map, infoWindow, html) {
		      google.maps.event.addListener(marker, 'click', function() {
			infoWindow.setContent(html);
			infoWindow.open(map, marker);
		      });
		    }

		    function downloadUrl(url, callback) {
		      var request = window.ActiveXObject ?
			  new ActiveXObject('Microsoft.XMLHTTP') :
			  new XMLHttpRequest;

		      request.onreadystatechange = function() {
			if (request.readyState == 4) {
			  request.onreadystatechange = doNothing;
			  callback(request, request.status);
			}
		      };

		      request.open('GET', url, true);
		      request.send(null);
		    }

		    function doNothing() {}

		    //]]>
		  </script>		
		<div id="page">
			<div id="content">
				<div class="post">
					<h2><?php echo $page_title ?></h2>
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
									<td  valign="top">Scout Name</td>
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
								<tr>
									<td><button name="btnNewCard" id="button">Submit</button></td>
								</tr>
							</table>
						</form>
						<br />
						<div id="map" style="width: 1150px; height: 350px"></div>
						<br />
						<h2>Data Table</h2>
						<table width="100%" border="0" cellspacing="2" cellpadding="2" class="display" id="example">
						<thead bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Phone Number</th>
								<th>Longitude</th>
								<th>Lattitude</th>
								<th>Type</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
						<?php
						 $sql = mysql_query("select id, name, address, lat, lng, type from markers order by name asc");
						
						 while ($row = mysql_fetch_array($sql))
						 {
							$intcount++;
							$id = $row['id'];
							$name = $row['name'];
							$name = ucwords(strtolower($name));
							$address = $row['address'];
							$lat = $row['lat'];
							$lng = $row['lng'];
							$type = $row['type'];
							
							if ($intcount % 2 == 0) {
								$display= '<tr bgcolor = #F0F0F6>';
							}
							else {
								$display= '<tr>';
							}
							echo $display;
							echo "<td valign='top'>$intcount.</td>";
							echo "<td valign='top'>$name</td>";
							echo "<td valign='top'>$address</td>";
							echo "<td valign='top'>$lat</td>";
							echo "<td valign='top'>$lng</td>";
							echo "<td valign='top'>$type</td>";
							echo "<td valign='top' align='center'><a title = 'Edit Detail' href='edit_marker.php?id=$id&action=edit'><img src='images/edit.png'  width='20px'></a></td>";
							echo "</tr>";	
						}
						?>
						</tbody>
						<tfoot bgcolor="#E6EEEE">
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Phone Number</th>
								<th>Longitude</th>
								<th>Lattitude</th>
								<th>Type</th>
								<th>Edit</th>
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
	include_once('includes/footer.php');
?>
