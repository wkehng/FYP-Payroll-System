<?php
include('admin/connection.php');
include('sanitise.php');

$username = sanitise($_POST['username']);
$password = sanitise($_POST['password']);
$oldpassword = sanitise($_POST['oldpassword']);

$qry =mysql_query("UPDATE admin SET password = '$password' WHERE username = '$username' and password = '$oldpassword' ");

if($qry)
	{
		echo "Password reset successful";
	}

else
	{
		echo "not successful .die or (mysql_error())";
	}
?>
