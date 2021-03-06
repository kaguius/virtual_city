<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title><?php echo $page_title ?> | Virtual City PnG System&#x2122;</title>
		<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Kreon" rel="stylesheet" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Simonetta' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		
		<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
		<script src="js/gen_validatorv4.js" type="text/javascript"></script>
		
		<link href="css/redmond/jquery-ui-1.9.2.custom.css" rel="stylesheet">
		<script src="js/jquery-1.8.3.js"></script>
		<script src="js/jquery-ui-1.9.2.custom.js"></script>

		<script>
		$(function() {
		
			$( "#accordion" ).accordion();
		

		
			var availableTags = [
				"ActionScript",
				"AppleScript",
				"Asp",
				"BASIC",
				"C",
				"C++",
				"Clojure",
				"COBOL",
				"ColdFusion",
				"Erlang",
				"Fortran",
				"Groovy",
				"Haskell",
				"Java",
				"JavaScript",
				"Lisp",
				"Perl",
				"PHP",
				"Python",
				"Ruby",
				"Scala",
				"Scheme"
			];
			$( "#autocomplete" ).autocomplete({
				source: availableTags
			});
		

		
			$( "#button" ).button();
			$( "#radioset" ).buttonset();
		

		
			$( "#tabs" ).tabs();
		

		
			$( "#dialog" ).dialog({
				autoOpen: false,
				width: 400,
				buttons: [
					{
						text: "Ok",
						click: function() {
							$( this ).dialog( "close" );
						}
					},
					{
						text: "Cancel",
						click: function() {
							$( this ).dialog( "close" );
						}
					}
				]
			});

			// Link to open the dialog
			$( "#dialog-link" ).click(function( event ) {
				$( "#dialog" ).dialog( "open" );
				event.preventDefault();
			});
		

		
			$( "#datepicker" ).datepicker({
				inline: true
			});
		

		
			$( "#slider" ).slider({
				range: true,
				values: [ 17, 67 ]
			});
		

		
			$( "#progressbar" ).progressbar({
				value: 20
			});
		

			// Hover states on the static widgets
			$( "#dialog-link, #icons li" ).hover(
				function() {
					$( this ).addClass( "ui-state-hover" );
				},
				function() {
					$( this ).removeClass( "ui-state-hover" );
				}
			);
		});
		</script>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="logo">
					<h1><a href="#">Virtual City PnG System&#x2122;</a></h1>
				</div>
				<div id="menu">
					<ul>
						<li class="first current_page_item"><a href="index.php">Login</a></li>
						<li><a href="logout.php">Logout</a></li>
					</ul>
					<br class="clearfix" />
				</div>
			</div>
