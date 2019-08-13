
<?php

require "db.php";
?>

<html>
<head>
<title> Signup</title>
<link rel="stylesheet" type="text/css" href="script.css">
<script type="text/javascript">
	let check = function()
		{
  if (document.getElementById('pass').value ==
    document.getElementById('pass1').value) 
  {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'Matching';
  } 
  else
   {
	document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Not Matching';
  }
}
</script>
</head>
<body>
	<div id="login-box">
		<div class="left-box">
			<h1> Signup </h1>
			<form method="post">
			<input type="text" name="username" id="name" placeholder="Username">
			<input type="Email"  name="email" id="em" placeholder="Email">
			<input type="password" name="password" id="pass" placeholder="Password" onkeyup='check();'>
			<input type="password" name="password2" id="pass1" placeholder="Retype Password" onkeyup='check();'>
			<span id='message'></span>	
			<input type="submit" name="sbutton" value="Sign Up" >
			</form>
			<p>Already Have an Account?<a href="indexnew.php"><b>Login</b></a></p>  

</div>
<div class="right-box">
	<span class="signin"><b>Be Social</b></span><br>
	<button class="social facebook">Log In Facebook</button><br>
	<button class="social twitter">Log In Twitter</button><br>
	<button class="social google">Log In Google+</button>
</div>
<div class="or">OR</div>
</div>


<?php
if(isset($_REQUEST['sbutton']))
{ 
        
    $ins = "insert into register values('".$_REQUEST['username']."','".$_REQUEST['email']."','".$_REQUEST['password']."','".$_REQUEST['password2']."')";
    $con->query($ins);

//     if(mysqli_query($con,$ins)===TRUE)
// echo $ins;

echo "success";
}


?>
