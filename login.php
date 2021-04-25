<?php
include('admin/connection.php');
include('sanitise.php');

$username = sanitise($_POST['username']);
$password = sanitise($_POST['password']);
$qry = mysql_query("SELECT * FROM admin WHERE username = '$username' AND password = '$password'");
$count = mysql_num_rows($qry);
if($count==1)
{
	session_start();
	$_SESSION['username'] = $username;
	header('Location: admin/index.php');
}
else
{
	echo "invalid username or password";
}
?>