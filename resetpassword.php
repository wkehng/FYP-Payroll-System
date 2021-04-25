<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

<style type="text/css">

body
{
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:11px;
	color:#000;
}
#spryconfirm1 {
	font-size: small;
}
#spryconfirm1 .confirmRequiredMsg {
	font-size: x-small;
}
</style>
</head>

<body><form name=form1 id=form1 action="reset.php" method="post" align=center>
<!--
<table width="409" border="0" align="center">
  <tr>
    <td width="118">Username</td>
    <td width="275"><input type="text" name="username" id="username" /></td>
  </tr>
  <tr>
    <td>New password</td>
    <td><span id="sprypassword1">
      <label for="password"></label>
      <input type="password" name="password" id="password" />
      </span></td>
  </tr>
  <tr>
    <td>Confirm new password</td>
    <td><label for="conewpassword"></label>      <label for="newpassword"><span id="spryconfirm1">
      <input type="password" name="newpassword" id="newpassword2" />
      </span></label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="submit" id="submit" value="Reset Password" /></td>
  </tr>
</table>
-->

<div class="card" style="border: none;">
  <div class="card-body">
    <h5 class="card-title">Reset Password</h5>
    <p class="card-text">Username</p>
	<input type="text" name="username" id="username" />
	
	<p class="card-text">Old new password</p>
	<input type="password" name="oldpassword" id="oldpassword" />
	
    <p class="card-text">New password</p>
	<input type="password" name="password" id="password" />
    
	<br>
	<br>
    <input type="submit" name="submit" id="submit" value="Reset Password" onclick="return proceed()" class="btn btn-primary">
	<br>
	<br>
	<a href="javascript:history.back()">Back to login page</a>

  </div>
</div>


</form>
<script type="text/javascript">
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1", {validateOn:["blur"]});
var spryconfirm1 = new Spry.Widget.ValidationConfirm("spryconfirm1", "password", {validateOn:["blur"]});

function proceed() {
	if (form1.username.value == "" ) {
		alert("Username cannot be blank.");
		form1.username.focus();
		return false;
	}if (form1.oldpassword.value == "" ) {
		alert("Old password cannot be blank.");
		form1.oldpassword.focus();
		return false;
	}if (form1.password.value == "" ) {
		alert("New password cannot be blank.");
		form1.password.focus();
		return false;
	}
}
</script>
</body>
</html>