	<div id="fine_paid<?php echo $borrow_details_id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<div class="alert alert-success">Fine Paid?</div>

		</div>
		<div class="modal-footer">
			<a class="btn btn-success" href="fine_save.php?<?php echo 'borrow_details_id='.$borrow_details_id; ?>">Yes</a>
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Close</button>
		</div>
    </div>