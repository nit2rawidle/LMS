<?php include('header.php'); ?>
<?php include('dbcon.php'); ?>
<?php 
if (isset($_POST['submit'])){

	$user=$_POST['mem_id'];
	$p=$_POST['password'];
	$p1=$_POST['password1'];
	$email=$_POST['email'];
	$firstname=$_POST['firstname'];
	$lastname=$_POST['lastname'];
	$gender=$_POST['gender'];
	$address=$_POST['address'];
	$contact=$_POST['contact'];
	$type=$_POST['type'];
	$year_level=$_POST['year_level'];
		
	$error = NULL;
	
	/*$query="select * from member where email_id = :email";
 
		$statement = $connect->prepare($query);
		$statement->execute(array(':email' => $_POST['email']));

		$no_of_rows = $statement->rowCount();
	*/
	if(strlen($user) < 7 ){
		$error = "<p>Your Member Id is Not correct.</p>";
	}elseif ($p != $p1) {
		$error = "<p>Password doesnt Match.</p>";
	}/*elseif($no_of_row > 0){
			$error = "<p>Input email is already present in database.</p>";
	}*/
	else{

		$mysqli = NEW MySQLi ('localhost','root','','lms4');

		//generate vkey 
		$vkey = md5(time().$user);

		$p = md5($p);

		$insert = mysqli_query($con,"insert into member(member_id, password, firstname, lastname, gender, address, contact, type, year_level, email_id, vkey ) 
		values('$user','$p','$firstname','$lastname','$gender','$address','$contact','$type','$year_level','$email','$vkey')")or die(mysqli_error($con));
		if ($insert) {
			
				$to = $email;
			$subject = "Email Verification";
			$message = "<a href = 'http://localhost/src/member/verify_signup.php?vkey=$vkey'>&nbsp;Register Account</a>";
			$headers = "From: iiitbhfakeid@gmail.com \r\n";
			$headers .= "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

			mail($to, $subject, $message, $headers);
			header("location:thankyou.html");
		}else{
				$mysqli->error;
		}
	}
	
}
?>	
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	
		
	<div class="addstudent">
	<div class="details">Please Enter Details Below</div>		
	<form class="form-horizontal" method="POST" action="">
			
		<div class="control-group">
			<label class="control-label" for="inputEmail">Member ID:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="mem_id"  placeholder="ID" required>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputEmail">Firstname:</label>
			<div class="controls">
			<input type="text" id="inputEmail" name="firstname"  placeholder="Firstname" required>

			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Lastname:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="lastname"  placeholder="Lastname" required>
			</div>
        </div>
              
        <div class="control-group">
			<label class="control-label" for="inputPassword">Password:</label>
			<div class="controls">
			<input type="password" id="inputPassword" name="password"  placeholder="Password" required>
			</div>
        </div>

        <div class="control-group">
			<label class="control-label" for="inputPassword">Confirm Password:</label>
			<div class="controls">
			<input type="password" id="inputPassword" name="password1"  placeholder="Confirm Password" required>
			</div>
        </div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Gender:</label>
			<div class="controls">
			<select name="gender" required>
				<option>Male</option>
				<option>Female</option>
			</select>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="inputPassword">Adddress:</label>
			<div class="controls">
			<input type="text" id="inputPassword" name="address"  placeholder="Address" required>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputEmail">Email ID:</label>
			<div class="controls">
			<input type="email" id="inputEmail" name="email" placeholder="Email" required>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Cellphone Number:</label>
			<div class="controls">
			<input type='tel' pattern="[0-9]{10,10}" class="search" name="contact"  placeholder="Phone Number"  autocomplete="off"  maxlength="11" >
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputPassword">Type:</label>
			<div class="controls">
			<select name="type" required>
				<option>Student</option>
			    <option>Teacher</option>
									
				</select>
			</div>
		</div>
			
		<div class="control-group">
			<label class="control-label" for="inputPassword">Year Level:</label>
			<div class="controls">
				<select name="year_level" >	

									<option>First Year</option>
									<option>Second Year</option>
									<option>Third Year</option>
									<option>Fourth Year</option>
									<option>Faculty</option>
				</select>
			</div>
		</div>
		
		<div class="control-group">
			<div class="controls">
			<button name="submit" type="submit" class="btn btn-default"><i class="icon-save icon-large"></i>&nbsp;Save</button>
			</div>
		</div>
    </form>					
			</div>		
			</div>		
			</div>
		</div>
    </div>
