<?php 
include('dbcon.php');
if (isset($_POST['submit'])){
$mem_id=$_POST['mem_id'];
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$contact=$_POST['contact'];
$type=$_POST['type'];
$year_level=$_POST['year_level'];



								
mysqli_query($con,"insert into member(member_id,firstname,lastname,gender,address,contact,type,year_level) values('$mem_id','$firstname','$lastname','$gender','$address','$contact','$type','$year_level')")or die(mysql_error());
 
 
header('location:member.php');
}
?>	