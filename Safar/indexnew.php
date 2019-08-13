<?php 
require "db.php";

session_start();

if(isset($_REQUEST['loginbtn']))
  {

/*$sel="select cemail,cpwd from customer where cemail='".$_REQUEST['email']."' and cpwd='".$_REQUEST['pwd']."'";

    */

     
  $sel="SELECT Username,Password FROM register WHERE Username='".$_REQUEST['uname']."' and Password='".$_REQUEST['psw']."'";
  $result=mysqli_query($con,$sel) or die(mysqli_error($con));
  //$rel=$con->query($sel);
  if(mysqli_num_rows($result)>0)
    {

/*
      $row=mysqli_fetch_array($result);*/

      $_SESSION['loginses']=$_REQUEST['uname'];
     // echo $_SESSION['loginses']; 
      header("location:package.php");

      //$id=$row['Username'];
    //  echo $id;
      /*if($id==$_POST)
        {
        // $message= "success";
       //   echo "<script type='text/javascript'>alert('$message');</script>";
      
      $_SESSION['loginses']=$_REQUEST['uname'];
      echo $_SESSION['loginses']; 

        }*/

 }
        else
        { 
          header("location:indexnew.php");
            
        }
     

  }
?>




<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="index.css">
<link rel="stylesheet" type="text/css" href="foot.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="package.html">
    <div class="imgcontain">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="avatar.png" alt="Avatar" class="avatar">
    </div>

    <div class="contain">
      <label for="uname" style="font-style: georgia;size: 8;" ><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
       <center>
        <table>
          
          <tr>
            <th>
      <button type="submit" class="loginbtn">Login</button></th>
      <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;</th><th>
      <button type="button"   class="signupbtn"><a href="register.php">Signup</a></button></th>
      </tr>
      </table>
    </center>
    <table>
      <tr>
      <br>
      <label id="chk">
        <th><input type="checkbox" checked="checked" name="remember"> Remember me</th>
      </label><th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;</th>
      <div id="forget">
      <th><p> <a href="#" style="color: black">Forgot Password??</a></p></th>
        </div>
      </tr>
      </table>
        </div>

  </form>
</div>
<div class="bg">
  <div class="slideshow-container">
<div class="mySlides fade">
  <img src="img1/a.jpeg">
</div>

<div class="mySlides fade">
  <img src="img1/d.jpg">
</div>

<div class="mySlides fade">
  <img src="img1/m.jpg">
</div>

  <div class="centered">“Travel opens your heart, broadens your mind and fills your life with stories to tell.” 
<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;        
– Paula Bendfeldt
</div><br><br>

  <div class="but">
<button  class="but1" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">GET STARTED</button>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < slides.length; i++) {
        slides[i].className = slides[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    slides[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>


</div>
  </div>
<div class="container">


    <div class="topnav">
      <img src="img1/logo.png">
        <a href="contact.html">Contact</a>
      <a href="package.html">Package</a>
      <a href="about.html">About</a>
      <a href="index.html">Home</a>
    </div>
  </div>
</div>
<!--Feedback-->
<div class="feed">
<a href="contact.html"><img src="feedback.png"></a>
</div>

<!--Top-->
<div class="top">
<i onclick="topFunction()" id="myBtn" class="fa fa-angle-double-up"></i>
<input type="button" onclick="topFunction()" id="myBtn" title="Go to top" class="fa fa-angle-double-up">
</div>
<!--Features-->

<a name= "Feature"></a>
<div class="feature">
<h1>Features</h1>
<p>We Provide Some Unique Features</p> 
    <i class="fa fa-user" style="font-size:38px;top:20%"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Expert Guide</b>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-drivers-license-o" style="font-size:38px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Professtional Service</b>&nbsp;&nbsp;&nbsp;&nbsp;
<i class="fa fa-phone" style="font-size:38px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Great Support</b>&nbsp;&nbsp;&nbsp;&nbsp;  
<br><br><br><br><br&nbsp;&nbsp;&nbsp;&nbsp;>

<i class="fa fa-rocket" style="font-size:38px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Technical Skills</b>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;

<i class="fa fa-diamond" style="font-size:38px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Highly Recommended</b>&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;

<i class="fa fa-comment-o" style="font-size:38px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;<b>Positive Reviews</b>&nbsp;&nbsp;&nbsp;&nbsp;
  </div>
  








<!--Services-->
<a name= "Service"></a>
<center>
  <div class="service">
<h1>Services We Provide</h1>
<p>Get.Set.GO</p>

<table><tr>
    <th><img src="img/o1.jpg"><p>Rent a Vehicle</p><i>Working with over 50 companies in<br> more than 15+ cities, we can find<br> the right car in the right place,<br> at the right price for you.</i></th> 
   
    
    <th><img src="img/o2.jpg"><p>Quick Booking</p><i>Book your next vacation with us.<br> Treat yourself to 5 star holidays,<br> Budget Tour Packages.<br> Holiday Packages in India.</i></th> 
   
       
         <th><img src="img/o3.jpg"><p>To Do List</p><i>Defining where you want to go.<br> A lot of people talk vaguely about travel.<br> They never say where they are going.<br>Picking a destination is important.</i></th> 
   

         <th><img src="img/o4.jpg"><p>Traditional Food</p><i>Traditional foods are foods and dishes<br> that are passed through generations
          <br> or which have been consumed<br> many generations.</i></th> 
   
   </tr>
   
</table>
  </center>


<!--Footer-->
<div class="footer">
  <div class="left">
    <h2><i>About Agency</i></h2><br>
    <h6>The world has become so fast<br> paced that people don’t want to<br> stand by reading a page of<br> information, they would much rather <br>look at a presentation and <br>understand the message. <br>It has come to a point.</h6>
  </div>
  <div class="right">
    
<div class="footer-social-icons">
    <h4 class="_14">Be Social</h4>
    <ul class="social-icons">
        <li><a href="www.facebook.com" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
        <li><a href="www.twitter.com" class="social-icon"> <i class="fa fa-twitter"></i></a></li>
        <li><a href="www.youtube.com" class="social-icon"> <i class="fa fa-youtube"></i></a></li>
        <li><a href="www.linkedin.com" class="social-icon"> <i class="fa fa-linkedin"></i></a></li>
        <li><a href="www.instagram.com" class="social-icon"> <i class="fa fa-instagram"></i></a></li>
    </ul>
</div>
  </div>
  <div class="center">
    <h2><i>Links</i></h2>
    <ul style="list-style-type:none">
    <li><a href="index.html">Home</a></li>
<li><a href="#Feature">Feature</a></li>
<li><a href="team.html">Our Team</a></li>
<li><a href="packages.html">Packages</a></li>
<li><a href="#Service">Services</a></li>
<li><a href="contact.html">Contact</a></li></ul>
  </div>
  <br><br>  
 <hr>

 
  <br>
  <h1>SAFAR</h1>
  <hr style="width:100px;">
<p>Copyright ©2018 Safar | All rights reserved.</p>
</div>



</body>
</html>