<?php
	
    $hr_host = 'localhost';
    $hr_database = 'modelsdb';
    $hr_user = 'root';
    $hr_password = 'kaguius';
    
    //$conn = mysql_connect("hostname","username","password");
    //mysql_select_db("db1",$conn);
    //mysql_select_db("db2",$conn);
	
	if (mysql_connect($hr_host,$hr_user,$hr_password))
	{
		if (!mysql_select_db($hr_database))
		{
            echo 'Database Error: ','Unable to select the specified HR database for use.';
		}
	}
	else
	{
        echo 'Database Error: ','Unable to connect to the HR database server.';
	}
?>
