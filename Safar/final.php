<?php

require "db.php";
?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
    box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
    width: 20%;
    padding: 12px;
    border: 1px solid #ccc;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

/* Style the container/contact section */
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 10px;
    
}

/* Create two columns that float next to eachother */
.column {
    float: left;
    width: 50%;
    margin-top: 6px;
    padding: 20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
.but1
{
  width: 50px;
  height: 50px;
  
}
.but1:hover
{
  opacity: 0.8;
 
}
.customize h1{
  width:auto;
  padding-right:5%;
  background-color:rgba(102, 102, 102);
  position:sticky;
  color: white;
  transform: skew(-20deg);
      
}
.container h1
{
  text-shadow: 
}
.container p
{


}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}

.box {
  width: 65%;
  margin: 0 auto;
  
 margin-right:600px;
  
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
}
.box button
{
  
}

.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 80px auto;
  margin-bottom: 20%;
  padding-bottom: 30%;
  bottom:5%;
  height: 5%;
    background: #fff;
  border-radius: 5px;
  width: 80%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close1 {
  position: absolute;
  top:0px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close1:hover {
  color: #06D85F;
}
.popup .content1 {
  height: 50%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
  
  }
}
.column1 {
  float: right;
  width: 23%;
  margin-top: 5%;
}

/* Remove extra left and right margins, due to padding */
.row1 {margin: 0 -5px;}

/* Clear floats after the columns */
.row1:after {
  content: "";
  display: table;
  clear: both;

}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column1 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  
  
  height:300px;
  width:200px;
  text-align: center;
  background-color: #f1f1f1;
}

.button {
  font-size: 1em;
  padding: 10px;
  color: black;
  border:1px solid;
  border-radius: 20px/50px;
  text-decoration: none;
  cursor: pointer;
  transition: all 0.3s ease-out;
}
.button:hover {
  background: #06D85F;
}


</style>


</head>
<body>

<div class="container">
  <div style="text-align:center">
    <h1>Customize It In Your Way</h1>
    <p>Build Your Own Dream Package and Enjoy The Vacation with us </p>
  </div>
  <div class="row">
    <div class="column">
      <div id="map" alt="Connect to Internet" style="width:100%;height:500px"></div>
    </div>
    <div class="column">
      <form class="customize" action="" method="post">
<h1>BUILD YOUR OWN PACKAGE</h1>
<div class="input">
 Starting City*:<select name="stcity" required >&nbsp&nbsp&nbsp;
    <option value=""></option>
    <option value="Udaipur">Udaipur</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Manali">Manali</option>
    <option value="Goa">Goa</option>
    <option value="Shimla">Shimla</option>
    <option value="Varanasi">Varanasi</option>
    <option value="Nainital">Nainital</option>
    <option value="Haridwar">Haridwar</option>
    <option value="Rishikesh">Rishikesh</option>
    <option value="Leh Ladakh">Leh Ladakh</option>
    <option value="Andaman&Nicobar">Andaman & Nicobar</option>
    <option value="Srinagar">Srinagar</option>
    <option value="Mysore">Mysore</option>
    <option value="Munnar">Munnar</option>
    <option value="Darjeeling">Darjeeling</option>
  </select>
  &nbsp&nbsp&nbsp&nbsp;
  Date*: 
  <input type="date" name="date" value="date" required>
  <br> <br>
  Destination*:<select name="descity"  required >&nbsp&nbsp&nbsp;
    <option value=""></option>
    <option value="Udaipur">Udaipur</option>
    <option value="Mumbai">Mumbai</option>
    <option value="Manali">Manali</option>
    <option value="Goa">Goa</option>
    <option value="Shimla">Shimla</option>
    <option value="Varanasi">Varanasi</option>
    <option value="Nainital">Nainital</option>
    <option value="Haridwar">Haridwar</option>
    <option value="Rishikesh">Rishikesh</option>
    <option value="Leh Ladakh">Leh Ladakh</option>
    <option value="Andaman&Nicobar">Andaman & Nicobar</option>
    <option value="Srinagar">Srinagar</option>
    <option value="Mysore">Mysore</option>
    <option value="Munnar">Munnar</option>
    <option value="Darjeeling">Darjeeling</option>
  </select>
  <br><br>
  Number Of Rooms*:<select name="room" required >&nbsp&nbsp&nbsp;
    <option ></option>
    <option >1</option>
    <option >2</option>
    <option >3</option>
    <option >4</option>
    </select>
  &nbsp&nbsp&nbsp&nbsp;
  Number Of Night*:<select name="night" required >&nbsp&nbsp&nbsp;
    <option ></option>
    <option >1</option>
    <option >2</option>
    <option >3</option>
    <option >4</option>
    </select>
     <br><br>
  Adults[12+]*:<select name="adult" required>&nbsp&nbsp&nbsp;
    <option ></option>
    <option >1</option>
    <option >2</option>
    <option >3</option>
    <option >4</option>
    </select>
    &nbsp&nbsp&nbsp&nbsp;
  Child:<select name="Child[1-2yrs]"  >&nbsp&nbsp&nbsp;
    <option ></option>
    <option >1</option>
    <option >2</option>
    <option >3</option>
    <option >4</option>
    </select>
    &nbsp&nbsp&nbsp&nbsp;
  Infant:<select name="Infant[0-2yrs]"  >&nbsp&nbsp&nbsp;
    <option ></option>
    <option >1</option>
    <option >2</option>
    <option >3</option>
    <option >4</option>
    </select>

    <br><br>
    
</div>
  <div class="box">
 <button type="submit" name="submit">Get Details</button>

  </div>
</form>
<?php 
            if(isset($_POST['submit']))
            {
              $source=$_POST['stcity'];
              $des=$_POST['descity'];
              $date=$_POST['date'];
              $night=$_POST['night'];
              $room=$_POST['room'];
              $adult=$_POST['adult'];
              $sql = "SELECT * FROM calculation where city='$source'";

              $result = $con->query($sql);
              $row = $result->fetch_assoc();
                $stprice=$row['price'];
                $sql = "SELECT * FROM calculation where city='$des'";

              $result = $con->query($sql);
              $row = $result->fetch_assoc();
                $desprice=$row['price'];
                $desairport=$row['airport'];
                $deshotel=$row['hotel'];
                $desflight=$row['flight'];    
                $average=($stprice+$desprice)/2;
                $average=$average*$night;
                $average=$average*$room;

                echo "*night*room". $average;
                $average=$average*$adult;
                echo "*night*room*adult". $average;
                echo $date;
                  echo $desairport;
                  echo $desflight;
              echo $deshotel;
            }
          ?>

        <button><a href="card.php?price=<?php echo $average?><br><br>Date:<?php echo $date ?><br>Airport:<?php echo $desairport ?><br>Hotel:<?php echo $deshotel ?><br>Flight:<?php echo $desflight ?>" >Checkout</a></button> 

    </div>
  </div>
</div>

<!--
<div id="popup1" class="overlay">
  <div class="popup">
    <div class="row1">
      <div class="column1">
        <div class="card1">
          
              }
            }
          ?>
        </div>
      </div>
    </div>
  
  
  <div class="column1">
  
    <div class="card1">
      <h3>Your Hotel in</h3>
      <p>HOTEL EASTERN PLAZA</p>
      <p>Rs.2500 per night</p>
    </div>
  </div>
  
  <div class="column1">
    <div class="card1">
      <h3>On Ground Transport</h3> 
      <p>vehicle + Sightseeing Rs.2000 per day</p>
      <p>Guide Rs.1000 per day</p>
    </div>
  </div>
</div>-->
    
    </div>
    </div>
  </div>
</div>

 <script>
// Initialize and add the map
function initMap() {
  // The location of Uluru
  var and = {lat: 12.0090072, lng: 92.6344573}; 
  var udp = {lat: 24.582737, lng:73.6939913 };
  var mum = {lat: 19.1108351, lng:72.8297853 };
  var ben = {lat: 12.9845472, lng:77.5669503 };
   var goa = {lat: 15.3789362, lng:73.8362083 };
  var leh = {lat: 34.1531514, lng:77.5758673 };
 var man = {lat: 32.2415595, lng:77.1864773 };
 var rish={lat: 30.0827166, lng:78.2594903 };
var shi={lat: 31.1008666, lng:77.1719863 };
 var sri={lat:34.0970594, lng:74.7880693};
 var nai={lat:29.3844777, lng:79.4578983};
 var mun={lat:10.0899883, lng:77.0585593}; 
 var mys={lat:12.3019872, lng:76.6348963};
 var dar={lat:27.0390388, lng:88.2590663};
 var har={lat:29.9464206, lng:78.1624973};
 var ram={lat:9.2883113, lng:79.3097023};
 var vara={lat:25.3064718, lng:82.9751773}; 
var alle={lat:9.501326, lng:76.333447};


 


  // The map, centered at Uluru
  var map = new google.maps.Map(document.getElementById('map'), {zoom: 4 ,center:udp});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: and, map: map});
  var marker = new google.maps.Marker({position: udp, map: map});
  var marker = new google.maps.Marker({position: mum, map: map});
  var marker = new google.maps.Marker({position: ben, map: map});
   var marker = new google.maps.Marker({position: goa, map: map});
  var marker = new google.maps.Marker({position: leh, map: map});
  var marker = new google.maps.Marker({position: man, map: map});
  var marker = new google.maps.Marker({position: rish, map: map});
 var marker = new google.maps.Marker({position: shi, map: map});
var marker = new google.maps.Marker({position: sri, map: map});
var marker = new google.maps.Marker({position: nai, map: map});
var marker = new google.maps.Marker({position: mun, map: map});   
var marker = new google.maps.Marker({position: mys, map: map});
var marker = new google.maps.Marker({position: dar, map: map});
var marker = new google.maps.Marker({position: har, map: map});
var marker = new google.maps.Marker({position: ram, map: map});
var marker = new google.maps.Marker({position: vara, map: map});
var marker = new google.maps.Marker({position: alle, map: map});

}
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgFJIeHaEf1JN2t404wt6FC5BoV-OHE-U&callback=initMap">
    </script>
</body>
</html>
