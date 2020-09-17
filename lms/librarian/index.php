<?php
	require "dbcon.php";
	require "../message_display.php";
	require "../verify_logged_out.php";
	require "../header_logintype.php";
?>

<html>
	<head>
		<title>Librarian Login</title>
		<link rel="stylesheet" type="text/css" href="../css/global_styles.css">
		<link rel="stylesheet" type="text/css" href="../css/form_styles.css">
		<link rel="stylesheet" type="text/css" href="css/index_style.css">
	</head>
	<body>
		<form class="cd-form" method="POST" action="#">
		
		<legend>Librarian Login</legend>
		
			<div class="error-message" id="error-message">
				<p id="error"></p>
			</div>
			
			<div class="icon">
				<input class="l-user" type="text" name="l_user" placeholder="Username" required />
			</div>
			
			<div class="icon">
				<input class="l-pass" type="password" name="l_pass" placeholder="Password" required />
			</div>
			
			<input type="submit" value="Login" name="l_login"/>
			
		</form>
	</body>
	
	<?php
		if (isset($_POST['l_login'])){
		session_start();
		$username = $_POST['l_user'];
		$password = $_POST['l_pass'];
		$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
		$result = mysqli_query($con,$query)or die(mysql_error());
		$num_row = mysqli_num_rows($result);
		$row=mysqli_fetch_array($result);
			if( $num_row > 0 ) {
				header('location:dashboard.php');
				$_SESSION['id']=$row['user_id'];
			}
		else{ ?>
			<div class="alert alert-danger">Access Denied</div>		
			<?php
	}}
	?>
	
</html>