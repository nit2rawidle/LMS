<?php include('dbcon.php'); ?>
<?php include('../header.php'); ?>
<!--?php include('session.php'); ?-->
<?php include('../verify_logged_out.php'); ?>

<html>
	<head>
		<title>Member SignUp</title>
		<link rel="stylesheet" type="text/css" href="../css/global_styles.css">
		<link rel="stylesheet" type="text/css" href="../css/form_styles.css">
		<link rel="stylesheet" type="text/css" href="../css/index_style.css">
	</head>
	<body>

	<div class="addstudent">
	<div class="details">Please Enter Details Below</div>		
	<form class="cd-form" method="POST" action="verify.php">

		<legend>Member SignUp</legend>
			
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
			<label class="control-label" for="inputPassword">Gender:</label>
			<div class="controls">
				<select name="gender" required>
					<option></option>
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
			<label class="control-label" for="inputPassword">Cellphone Number:</label>
			<div class="controls">
				<input type='tel' pattern="[0-9]{11,11}" class="search" name="contact"  placeholder="Phone Number"  autocomplete="off"  maxlength="11" >
			</div>
		</div>

		<div class="control-group">
			<label class="control-label" for="inputPassword">Type:</label>
			<div class="controls">
				<select name="type" required>	
					<option></option>
					<option>Student</option>
					<option>Teacher</option>
					<option></option>				
				</select>
			</div>
		</div>
			
		<div class="control-group">
			<label class="control-label" for="inputPassword">Year Level:</label>
			<div class="controls">
				<select name="year_level" >
					<option> </option>
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

<?php include('footer.php') ?>
</body>

<?php
	if (isset($_POST['submit'])){
		$firstname=$_POST['firstname'];
		$lastname=$_POST['lastname'];
		$gender=$_POST['gender'];
		$address=$_POST['address'];
		$contact=$_POST['contact'];
		$type=$_POST['type'];
		$year_level=$_POST['year_level'];
						
	mysqli_query($con,"insert into member(firstname,lastname,gender,address,contact,type,year_level) values('$firstname','$lastname','$gender','$address','$contact','$type','$year_level')")or die(mysql_error());
?>

</html>