<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php
if (isset($_GET['id'])){
    $id = $_GET['id'];
}
?>
<div class="navbar navbar-fixed-top nav-wrapper">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse collapse">
                        <!-- .nav, .navbar-search, .navbar-form, etc -->
					<ul class="nav">
					<li class="active"><a href="profile.php"></i>&nbsp;Profile</a></li>
					
					<li><a href="books.php?id=<?php echo $id?>">&nbsp;Books</a></li>
            
					<li></li>
					</ul>
					 <div class="pull-right">
						<div class="admin"><a href="#logout" data-toggle="modal"></i>&nbsp;Logout</a></div>
                     </div>
                    </div>
                </div>
            </div>
        </div>


        
<div class="container">
		<div class="margin-top">
			<div class="row">	
				<div class="span12">		
						<div class="alert alert-danger"><strong>Borrowed Books</strong></div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">

                                <thead>
                                    <tr>
                                        <th>Book title</th>                                 
                                        <th>Borrower</th>                                 
                                        <th>Year Level</th>                                 
                                        <th>Date Borrow</th>                                 
                                        <th>Due Date</th>                                
										<th>Borrow Status</th>
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php 
                                      if(isset($_GET['id'])) 
                                      {
                                          $id = $_GET['id'];
                                         // echo $id;
                                      }
                                  $user_query=mysqli_query($con,"select * from borrow
								LEFT JOIN member ON borrow.member_id = member.member_id
								LEFT JOIN borrowdetails ON borrow.borrow_id = borrowdetails.borrow_id
								LEFT JOIN book on borrowdetails.book_id =  book.book_id WHERE member.member_id = $id AND borrowdetails.borrow_status = 'pending'
								ORDER BY borrow.borrow_id DESC
								  ")or die(mysqli_error($con));
									while($row=mysqli_fetch_array($user_query)){
									$id=$row['borrow_id'];
									$book_id=$row['book_id'];
									$borrow_details_id=$row['borrow_details_id'];
                                    
									?>
									<tr class="del<?php echo $id ?>">
									
                                    <td><?php echo $row['book_title']; ?></td>
                                    <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                    <td><?php echo $row['year_level']; ?></td>
									<td><?php echo $row['date_borrow']; ?></td> 
                                    <td><?php echo $row['due_date']; ?> </td>
									<td><?php echo $row['borrow_status'];?></td>
                                    <td></td> 
									 
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							

			</div>		
			</div>
		</div>
    </div>


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

                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  
                                  if(isset($_GET['id'])) 
                                  {
                                      $id = $_GET['id'];
                                     // echo $id;
                                  }
                                  $user_query=mysqli_query($con,"select * from borrow
								LEFT JOIN member ON borrow.member_id = member.member_id
								LEFT JOIN borrowdetails ON borrow.borrow_id = borrowdetails.borrow_id
								LEFT JOIN book on borrowdetails.book_id =  book.book_id 
                                where borrowdetails.borrow_status = 'returned'  AND member.member_id = $id 
                                ORDER BY borrow.borrow_id DESC
								  ")or die(mysqli_error($con));
									while($row1=mysqli_fetch_array($user_query)){
									$id=$row1['borrow_id'];
									$book_id=$row1['book_id'];
									$borrow_details_id=$row1['borrow_details_id'];
										
										$year_level = $row1['year_level'];
										$date_in = strtotime($row1['date_return']);
						
										$due_date = strtotime($row1['due_date']);
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
                                        $fine_amt = 0;
 
                                      //var_dump($fine_amt);
                                    ?>
									<tr class="del<?php echo $id ?>">
								    
                                    <td><?php echo $row1['book_title']; ?></td>
                                    <td><?php echo $row1['firstname']." ".$row1['lastname']; ?></td>
                                    <td><?php echo $row1['year_level']; ?></td>
									<td><?php echo $row1['date_borrow']; ?></td> 
                                    <td><?php echo $row1['due_date']; ?> </td>
									<td><?php echo $row1['date_return']; ?></td>
									<td><?php echo $fine_amt ?></td>
                                    <td></td> 
									 
                                    </tr>
									<?php  }  ?>
                                </tbody>
                            </table>
							

			</div>		
			
			</div>
		</div>
    </div>

    <?php include('footer.php') ?>