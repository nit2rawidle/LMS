<?php 
include('dbcon.php');

$borrow_details_id =$_GET['borrow_details_id'];


mysqli_query($con,"update borrowdetails SET fine = 0 where borrow_details_id = '$borrow_details_id'")or die(mysqli_error($con));		
                   


$book_id = mysqli_query($con,"select book_id from borrowdetails WHERE borrow_details_id ='$borrow_details_id' LIMIT 1");
        while($row = mysqli_fetch_array($book_id))
                $book_id_val=$row['book_id'];

$book_name = mysqli_query($con,"select book_title from book where book_id ='$book_id_val' LIMIT 1");
        while($row = mysqli_fetch_array($book_name))
                $book_name_val=$row['book_title'];

        
$borrow_id=mysqli_query($con,"select borrow_id from borrowdetails WHERE borrow_details_id='$borrow_details_id' LIMIT 1");
        while($row = mysqli_fetch_array($borrow_id))
                $borrow_id=$row['borrow_id'];
       
                
$memid=mysqli_query($con,"select member_id from borrow WHERE borrow_id='$borrow_id' LIMIT 1");
         while($row = mysqli_fetch_array($memid))
                $mem_id_val=$row['member_id'];

$result=mysqli_query($con,"select email_id from member where member_id='$mem_id_val' LIMIT 1");   
        while($row = mysqli_fetch_array($result))
                $email=$row['email_id'];

                $user_query=mysqli_query($con,"select * from borrow LEFT JOIN member ON borrow.member_id = member.member_id LEFT JOIN borrowdetails ON borrow.borrow_id = borrowdetails.borrow_id
                LEFT JOIN book on borrowdetails.book_id =  book.book_id where borrowdetails.borrow_status = 'returned' ORDER BY borrow.borrow_id DESC")
                or die(mysql_error());
        $row1=mysqli_fetch_array($user_query);
        //$id=$row1['borrow_id'];
        //$fine_book_id=$row1['book_id'];
        //$borrow_details_id=$row1['borrow_details_id'];
                
                $year_level = $row1['year_level'];
                $date_in = strtotime($row1['date_return']);

                $due_date = strtotime($row1['due_date']);
                $days_diff = $date_in - $due_date;
                $date_diff = floor($days_diff / (60 * 60 * 24));
                if ($date_diff > 0)
                {
                        $fine_amt = $date_diff * 1;            
                }
                else
                {
                        $fine_amt = 0;
                }
                if ($year_level != 'Faculty' )
                $a=$fine_amt;
                else
                $a=0;        

                $message  = "You have paid fine for  the book named ";
                $message .= $book_name_val;
                $message .= " amounting Rs.";
                $message .= $a;
                $subject = "Fine Paid";
                $header = "From: email@gmail.com";
        
                mail($email,$subject,$message,$header);


 header('location:return.php');
?>	