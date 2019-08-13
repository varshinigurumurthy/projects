<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
* {
  box-sizing: border-box;
}

body {
  background-image: url("price-bg.png");
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: center;
  width: 20%;
 
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;

}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding-left:  200px;
  padding-right:  200px;
  padding-top: 10px;
  padding-bottom: 10px;
  margin-left:50%;
  width: 100%;
  height: auto;
  font-family:sans-serif; 

  margin-top: 80%;
  background-color: #f1f1f1;
}
.card p{
font-family:sans-serif;  
font-size:15px;


}
.card h3{
 font-family:Georgia; 
 font-size: 25px; 
}
/*Navbar*/
nav a {
  position: relative;
  display: inline-block;
  margin: 15px 25px;
  outline: none;
  color: #fff;
  text-decoration: none;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-weight: 400;
  text-shadow: 0 0 1px rgba(255,255,255,0.3);
  font-size: 1.35em;
  text-align: center;
  float: right;
}

nav a:hover,
nav a:focus {
  outline: none;
}


/* Effect 5: same word slide in */
.cl-effect-5 a {
  overflow: hidden;
  padding: 0 4px;
  height: 1em;
}

.cl-effect-5 a span {
  position: relative;
  display: inline-block;
  -webkit-transition: -webkit-transform 0.3s;
  -moz-transition: -moz-transform 0.3s;
  transition: transform 0.3s;
}

.cl-effect-5 a span::before {
  position: absolute;
  top: 100%;
  content: attr(data-hover);
  font-weight: 700;
  -webkit-transform: translate3d(0,0,0);
  -moz-transform: translate3d(0,0,0);
  transform: translate3d(0,0,0);
}

.cl-effect-5 a:hover span,
.cl-effect-5 a:focus span {
  -webkit-transform: translateY(-100%);
  -moz-transform: translateY(-100%);
  transform: translateY(-100%);
}

.color-5 {
  
  padding-bottom: -5%;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
  height: 5%;
}

.btn:hover {
  background-color: black;
}


</style>
</head>
<body>
<?php
      include('db.php');
    
?>
    

<table><tr>
<div class="row">
 <th>
  <div class="column">
    <form method="post">
    <div class="card">
    <h3>Other Activities</h3> 
      <input type="checkbox" name="chk1" value="2000">vehicle + Sightseeing Rs.2000 per day
    <input type="checkbox" name="chk2" value="1000">  Guide Rs.1000 per day
    <button type="submit" name="submit">Submit</button>
    </div>
  </div>
</th>

<?php 
if(isset($_POST['submit']))
{
  $price1=$_POST['chk1'];
  $price2=$_POST['chk2'];
?>

<th>
   <div class="column">
     
    <div class="card">
      <h3>Details</h3>
      <h3><br>
    
       <p><?php 
      if(isset($_GET['price']))
      {
        $price3=$_GET['price'];
        echo "Price:";
        echo $_GET['price'];
        echo "<br>";
        echo "Total Price:";
        echo $price1+$price2+$price3;
      }
      
      
    }
      ?></h3>
    </div>
  </div>
  </th>
</tr>
</table>

<button type="submit" onclick="alertfn()"  class="btn"><a href="payment.html">Pay</a/></button>
  
</body>
</html>
