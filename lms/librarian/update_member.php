<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$id=$_POST['id'];
$member_id=$_POST['mem_id'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$contact=$_POST['contact'];
$type=$_POST['type'];
$year_level=$_POST['year_level'];
$status=$_POST['status'];
$email=$_POST['Email'];


mysqli_query($con,"update member set member_id='$member_id',firstname='$firstname',lastname='$lastname',gender='$gender',address = '$address',contact = '$contact',
type = '$type',year_level = '$year_level',email_id='$email',status = '$status' where member_id='$id'")or die(mysql_error());
								
								
header('location:member.php');
}
?>	