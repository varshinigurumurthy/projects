<!DOCTYPE html>

<html>
    <head>
        <title>Sign Up</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <link rel="stylesheet" type="text/css" href="css/style.css">

      
    </head>
    <body>


        
        <div class="page">
		<div id="header">
			<div class="connect">
				<p>

<a href="login.jsp">Login</a>
			</p>

				
			</div>
				<div>
				
<a href="index.jsp" class="logo">
<img src="WEB-INF/../img/images/logo (1)-Recovered.png" alt=""></a>
			
	<ul>
					<li class="selected">
					
	<a href="index.jsp">Home</a>
					</li>
				
	<li>
						<a href="contact.jsp">Contact</a>

		
			</li>
					<li>
	
					<a href="aboutus.jsp">About Us</a>
					
</li>
<li>
    <a href ="give_feedback.jsp">Feedback</a>
    
    </li>
	
					<li>
				
		<a href="report.jsp">Report</a>
					</li>
		

				</ul>
			</div>
		
</div>

		<div id="content">

				
                    <form action= "validateRegister.jsp"  style="color: white">
            <h1 > Create Account</h1>
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname"   autofocus name="fname"
                               required=""  OnBlur="validname()" /> </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname"  required="" > </td>
                </tr>
                <tr>
                    <td>User type</td>
                    <td><input type="text" name="utype" required=""/></td>
                    </tr>
                    
                    <tr>
                        <td>Gender</td>
                        <td>Male<input type="radio" name="gender" value="male" />
                            Female<input type="radio" name="gender" value="female" />
                        </td>
                </tr>
                
                <tr>
                    <td>Contact no.</td>
                    <td>
                        <input type="text" id="contact"  name="cno" maxlength="10" onBlur="validcontact()" />
                    </td>
                        
              
                  </tr>
                
                
                <tr>
                    <td>Email Id</td>
                    <td><input   name="eid"  required="" placeholder="example@domain.com" type="email"/> </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" required=""/> </td>
 
                </tr>
                <br>
    
                
            
                <tr>
                    <td colspan="2">
                        County  <select name="county">
                            <option value="India">India</option>
                            <option value="China">China</option>
                            <option value="Japan"> Japan</option>
                            <option value="Nepal">Nepal</option>
                        </select>
                    </td>
                </tr>
                
                 <tr>
                     <td>
                         Address
                     </td>
                         <td>
                             <textarea cols="40" rows="4" name="address" required="" ></textarea>
                     </td>
                </tr>
                
                
                <tr>
                    <td><br></td>
                </tr>
                
		<tr>
                    <td colspan="2">
                        
                  
                
                        <div id="div1" style="color:red;text-align:center;font-size: 80">
                        
                        </div>
         
                    </td>
                </tr>
                <tr>
                    <td><br></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="reg" value="Sign up" id="next" />
                        </td>
                        <td>
                            <input type="reset" value="Clear"  id="clear"/>
                        </td>
                </tr>
            </table>
        </form>
                    </div>
                    <div id="footer">
			<div>
				<span>Follow us :</span>
				<a href="" class="facebook" target="_blank">facebook</a>
				<a href="" class="twitter" target="_blank">twitter</a>
				<a href="" class="googleplus" target="_blank">googleplus</a>
			</div>
			<p>
				&copy; Copyright 2012. All rights reserved
			</p>
		</div>
	</div>
    </body>
</html>
