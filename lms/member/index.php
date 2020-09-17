<?php
	require "dbcon.php";
	require "../message_display.php";
	require "../verify_logged_out.php";
	require "../header_logintype.php";

	$error = NULL;
	if (isset($_POST['submit'])) 
	{
		include('dbcon.php');
		//Get form data
		$u = $_POST['l_user'];
		$p = $_POST['l_pass'];
		$p = md5($p);
		

		//Query database
		$resultSet = $mysqli->query("SELECT * FROM member 
		WHERE member_id = '$u' AND password = '$p' LIMIT 1" );

		if ($resultSet->num_rows !=0) 
		{
			//Process Login
			$row = $resultSet->fetch_assoc();
			$verified = $row['verified'];
			$email =$row['email'];

			if ($verified == 1) 
			{
				//Continue Processing
				echo "Your account is verified and you may now login"; 
			}
			else
			{
				$error = "This account has not yet been verified.
				An email has been sent to $email";
			}
		}
		else
		{
			//Invalid credentials
			$error = "The username  or password you entered is incorrect";
		}
	}
?>

<html>
	<head>
		<title>Member Login</title>
		<link rel="stylesheet" type="text/css" href="../css/global_styles.css">
		<link rel="stylesheet" type="text/css" href="../css/form_styles.css">
		<link rel="stylesheet" type="text/css" href="css/index_style.css">
	</head>
	<body>
		<form class="cd-form" method="POST" action="">
		
		<legend>Member Login</legend>
		
			<div class="error-message" id="error-message">
				<p id="error"></p>
			</div>
			
			<div class="icon">
				<input class="l-user" type="text" name="l_user" placeholder="ID" required />
			</div>
			
			<div class="icon">
				<input class="l-pass" type="password" name="l_pass" placeholder="Password" required />
			</div>
			
			<input type="submit" value="Login" name="l_login"/>
			
		</form>
		<p style="text-align:center"> Dont have an Account ->
		  <a href="sign.php">&nbsp;SignUp</a>
		</p>

	<center>
	<?php echo $error; ?>
	</center>
	</body>
	
	<?php
		if (isset($_POST['l_login'])){
			
		//session_start();
		$username = $_POST['l_user'];
		$ID = $username;
		$p = $_POST['l_pass'];
		$password = md5($p);
		$query = "SELECT * FROM member WHERE member_id ='$username' AND password ='$password' AND verified = 1";
		$result = mysqli_query($con,$query)or die(mysqli_error($con));
		$num_row = mysqli_num_rows($result);
		$row=mysqli_fetch_array($result);
			if( $num_row > 0 ) {
				header("location:profile.php?id=$username");
				$_SESSION['id']=$row['member_id'];
			}
		else{ ?>
			<div class="alert alert-danger">Access Denied</div>		
			<?php
	}}
	?>
	
</html>