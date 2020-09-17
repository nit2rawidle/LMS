<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_borrow.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
				<div class="span12">		
						<div class="alert alert-danger"><strong>Returned Books</strong></div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn-default"> Print</a>
								</div>
                                <thead>
                                    <tr>
                                        <th>Book title</th>                                 
                                        <th>Borrower</th>                                 
                                        <th>Year Level</th>                                 
                                        <th>Date Borrow</th>                                 
                                        <th>Due Date</th>                                
                                        <th>Date Returned</th>
										<th>Late fine to be paid</th>
										<th></th>

                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysqli_query($con,"select * from borrow
								LEFT JOIN member ON borrow.member_id = member.member_id
								LEFT JOIN borrowdetails ON borrow.borrow_id = borrowdetails.borrow_id
								LEFT JOIN book on borrowdetails.book_id =  book.book_id 
								where borrowdetails.borrow_status = 'returned' ORDER BY borrow.borrow_id DESC
								  ")or die(mysql_error());
									while($row1=mysqli_fetch_array($user_query)){
									$id=$row1['borrow_id'];
									$book_id=$row1['book_id'];
									$borrow_details_id=$row1['borrow_details_id'];
								    $f=$row1['fine'];

										$year_level = $row1['year_level'];
										$date_in = strtotime($row1['date_return']);
						
										$due_date = strtotime($row1['due_date']);

										if($f!=0)
								     {
										$days_diff = $date_in - $due_date;
									    $date_diff = floor($days_diff / (60 * 60 * 24));
										if ($date_diff > 0) {
                                        
										$fine_amt = $date_diff * 1;            
										} else {
											$fine_amt = 0;
									           }
                    
										if ($year_level != 'Faculty' ) {
										$result3 = mysqli_query($con,"UPDATE BORROWDETAILS SET fine = $fine_amt WHERE borrow_details_id = $borrow_details_id");
                                        }
                                        else
                                       $result3 = mysqli_query($con,"UPDATE BORROWDETAILS SET fine = 0 WHERE borrow_details_id = $borrow_details_id");
                                    }
                                      //var_dump($fine_amt);
                                    ?>
									<tr class="del<?php echo $id ?>">
								    
                                    <td><?php echo $row1['book_title']; ?></td>
                                    <td><?php echo $row1['firstname']." ".$row1['lastname']; ?></td>
                                    <td><?php echo $row1['year_level']; ?></td>
									<td><?php echo $row1['date_borrow']; ?></td> 
                                    <td><?php echo $row1['due_date']; ?> </td>
									<td><?php echo $row1['date_return']; ?></td>
									<td><?php echo $row1['fine']; ?></td>
									
                                    <td><a rel="tooltip"  title="Pay Fine" id="<?php echo $borrow_details_id; ?>"href="#fine_paid<?php echo $borrow_details_id; ?>"
                                    data-toggle="modal" class="btn-default">Pay Fine</a>
                                    <?php include('modal_fine.php'); ?>
                                    <td></td> 
									 
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							

			</div>		
	
<script>		
$(".uniform_on").change(function(){
    var max= 3;
    if( $(".uniform_on:checked").length == max ){
	
        $(".uniform_on").attr('disabled', 'disabled');
		         alert('3 Books are allowed per borrow');
        $(".uniform_on:checked").removeAttr('disabled');
		
    }else{

         $(".uniform_on").removeAttr('disabled');
    }
})
</script>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>	