<div class="signup">
	<table>
		<tr>
			<th class="name">
				Hi!, to save your orders, kindly fill in with your full name and contact number.
					<div class="row">
						<div class="col-2">Full Name:</div>
						<div class="col-auto"><input type="text" name="fullname" value="<?php echo $_POST["fullname"];?>"></div>
					</div>
					<div class="row">
						<div class="col-2">Mobile Number:</div>
						<div class="col-auto"><input type="text" name="mobile_num" value="<?php echo $_POST["mobile_num"];?>"></div>
					</div>
				<?php
				if(isset($_POST['OK'])) {
					$fullname = mysqli_real_escape_string($mysqli, $_POST["fullname"]);
					$mobile_num = mysqli_real_escape_string($mysqli, $_POST["mobile_num"]);
					
					$result = mysqli_query($mysqli, "INSERT INTO customer(customer_id,customer_name,customer_contact )
								VALUES(NULL,'$fullname','$mobile_num')");
				}
				?>
			</th>
		</tr>
	</table>
</div>