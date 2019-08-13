<html>
	<body>
		<?php
			include('db.php');
		?>
		<form method="post">
			<select name="descity"  required >&nbsp&nbsp&nbsp;
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
			  <input type="submit" name="submit" value="Submit">
		</form>
		<?php 
			if(isset($_GET['price']))
			{
				echo $_GET['price'];
			}

			 
                $sql = "SELECT hotel,airport,flight FROM calculation where city='$des'";

              $result = $con->query($sql);
              $row = $result->fetch_assoc();
			
		?>
	</body>
</html>