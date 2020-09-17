	<?php
 	include('dbcon.php');
	
	$id=$_POST['selector'];
 	$member_id  = $_POST['member_id'];
	$due_date  = $_POST['due_date'];

	if ($id == '' )
	{ 
	header("location: borrow.php");
	?>
	

	<?php }else{
	


	mysqli_query($con,"insert into borrow (member_id,date_borrow,due_date) values ('$member_id',NOW(),'$due_date')")or die(mysql_error());
	$query = mysqli_query($con,"select * from borrow order by borrow_id DESC")or die(mysql_error());
	$row = mysqli_fetch_array($query);
	$borrow_id  = $row['borrow_id']; 
	

$N = count($id);
for($i=0; $i < $N; $i++)
{
	 mysqli_query($con,"insert borrowdetails (book_id,borrow_id,borrow_status) values('$id[$i]','$borrow_id','pending')")or die(mysql_error());
	  
}


$result=mysqli_query($con,"select email_id from member where member_id='$member_id' LIMIT 1");   
        while($row = mysqli_fetch_array($result))
				$email=$row['email_id'];


//$result3=mysqli_query($con,"SELECT book_id FROM borrowdetails LEFT JOIN book ON book.borrow_id =borrowdetails.borrow_id LIMIT 3");
//		while($row = mysqli_fetch_array($result3))
//			$book_id=$row['book_id'];
$book_title = array();
$M = count($id);
for($i=0; $i < $M; $i++)
{
	$result4=mysqli_query($con,"SELECT book_title FROM book WHERE book_id = '$id[$i]' ");
		while($row = mysqli_fetch_array($result4))
			$book_title[$i]=$row['book_title'];

}

				

$message  = "You have borrowed the book(s) named\n";
$message .= $book_title[0];
$message .= "\n";
$message .= $book_title[1];
$message .= "\n"; 
$message .= $book_title[2];
$message .= "\n";
$message .= "for which the due date is ";
$message .= $due_date;

$subject = "Book Borrowed";
$header = "From: email@gmail.com";

mail($email,$subject,$message,$header);

header("location: borrow.php");
}  
?>
	
	

	
	