<?php
session_start();
require "db.php";
?>
<html>
<head>
	</head>
<body>
<form method="post">
	<label for="uname" style="font-style: georgia;size: 8;" ><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="unameee" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwwww" required>

      <input type="submit" name="btnlogin" value="Submit">
</form>
</body>

</html>

<?php

if(isset($_REQUEST['btnlogin']))
  {

/*$sel="select cemail,cpwd from customer where cemail='".$_REQUEST['email']."' and cpwd='".$_REQUEST['pwd']."'";

  	*/

	   
  $sel="SELECT Username,Password FROM register WHERE Username='".$_REQUEST['unameee']."' and Password='".$_REQUEST['pwwww']."'";
  echo $sel;
  $rel=$con->query($sel);
  if(mysqli_num_rows($rel)>0)
    {
    	header("location: index.php");
      /*<!-- $_SESSION['varshu']=$_REQUEST['uname'];
      echo $_SESSION['varshu']; -->*/
    }

    else
    { 
    	echo $_REQUEST['uname'];
        
    }

  }
?>