<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php include('navbar_borrow.php'); ?>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
				<div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong><i class="icon-user icon-large"></i>&nbsp;Borrow Table</strong>
				</div>
				
				<div class="span12">		

					<form method="post" action="borrow_save.php">
                    <div class="span3">

					<div class="control-group">
						<label class="control-label" for="inputEmail">Member ID:</label>
						<div class="controls">
							<input type="text" id="inputEmail" name="member_id"  placeholder="ID" style="border: 3px double #CCCCCC;" required>
	
						</div>
					</div>

					<div class="control-group"> 
						<label class="control-label" for="inputEmail">Due Date</label>
						<div class="controls">
						<input type="date"  class="w8em format-d-m-y highlight-days-67 range-low-today" name="due_date" id="sd" maxlength="5" style="border: 3px double #CCCCCC;" required/>						</div>
					</div>

					<div class="control-group"> 
						<div class="controls">
								<button name="borrow" class="btn btn-info" style="border: 3px double #CCCCCC;" 	>Borrow</button>
						</div>
					</div>
				</div>
				<div class="span8">
						<div class="alert alert-success"><strong>Select Book</strong></div>
                            <table cellpadding="0" cellspacing="0" border="0" class="table" id="example">

                                <thead>
                                    <tr>
                       
                                        <th>S No.</th>                                 
                                        <th>Book title</th>                                 
                                        <th>Category</th>
										<th>Author</th>
										<th>Publisher name</th>
										<th>Copies</th>
										<th>Add</th>
										
                                    </tr>
                                </thead>
                                <tbody>
								 
                                  <?php  $user_query=mysqli_query($con,"SELECT * FROM book WHERE book.status != 'lost' AND (book_copies - (SELECT COUNT(*) FROM borrowdetails WHERE book.book_id = borrowdetails.book_id AND borrow_status = 'pending')) > 0")or die(mysqli_error($con));
									while($row=mysqli_fetch_array($user_query)){
									$id=$row['book_id'];  
									$cat_id=$row['category_id'];
									$book_copies = $row['book_copies'];

									$cat_query = mysqli_query($con,"select * from category where category_id = '$cat_id'")or die(mysql_error());
									$cat_row = mysqli_fetch_array($cat_query);

									$borrow_details = mysqli_query($con,"select * from borrowdetails where book_id = '$id' and borrow_status = 'pending'");
									$row11 = mysqli_fetch_array($borrow_details);
									$count = mysqli_num_rows($borrow_details);	
									$total =  $book_copies  -  $count;
									?>
									
									<tr class="del<?php echo $id ?>">                              
                                    <td><?php echo $row['book_id']; ?></td>
                                    <td><?php echo $row['book_title']; ?></td>
									<td><?php echo $cat_row ['classname']; ?> </td> 
                                    <td><?php echo $row['author']; ?> </td> 
									<td><?php echo $row['publisher_name']; ?></td>
									<td><?php echo $total; ?></td> 
                                    <td width="20">
												<input id="" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>" >
												
                                    </td>
									</tr>
									
									<?php  }  ?>
                                </tbody>
                            </table>
							
			    </form>
			</div>		
			</div>		
<script>		
$(".uniform_on").change(function(){
    var max= 3;
	if( $(".uniform_on:checked").length == max )
	{
	
        $(".uniform_on").attr('disabled', 'disabled');
		         alert('3 Books are allowed per borrow');
        $(".uniform_on:checked").removeAttr('disabled');
		
	}
	else
	{
        $(".uniform_on").removeAttr('disabled');
    }
})
</script>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>