<form name="frm" id="frm" enctype="multipart/form-data">
	<div class="row">
		<div class="col-sm-11 populatemessage"></div>
	</div>
	<div class="row">
		<div class="col-sm-4">
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<a href="javascript:;" class="uploadphoto">
							<img src="<?php echo plugins_url();?>/cab_booking/inc/images/uploadimg.jpg">
						</a>
						<input type="file" name="driver_photo" id="driver_photo" style="display:none;">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>From<span class="md">*</span></label>
						<input type="text" class="form-control" name="from" id="from"  value="<?php echo $rs->from_address; ?>" />
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>To<span class="md">*</span></label>
						<input type="text" class="form-control" name="to" id="to" value="<?php echo $rs->to_address; ?>" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Extra Stops</label>
						<hr/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Date & Time</label>
						<hr/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>One Way Date & Time</label>
						<input type="text" class="form-control" name="to" id="to" value="<?php echo $rs->oneway_datetime; ?>" />
						<select name="luggage" class="form-control" id="luggage">
							<?php echo $this->Options(1,20);?>
						</select>
						<select name="luggage" class="form-control" id="luggage">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label>Estimate Time</label>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Return Date & Time</label>
						<input type="text" class="form-control" name="to" id="to" value="<?php echo $rs->oneway_datetime; ?>" />
						<select name="luggage" class="form-control" id="luggage">
							<?php echo $this->Options(1,20);?>
						</select>
						<select name="luggage" class="form-control" id="luggage">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label>Estimate Distance</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Promotions</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Options</label>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label>Driver & Vehicle Info</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Return<span class="md">*</span></label>
						<span class="md">Yes</span>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Driver</label>
						<select name="driver" class="form-control" id="driver">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Passengers<span class="md">*</span></label>
						<select name="passengers" class="form-control" id="passengers">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Vehicle</label>
						<select name="vehicle" class="form-control" id="vehicle">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Luggage<span class="md">*</span></label>
						<select name="passengers" class="form-control" id="passengers">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Return Driver</label>
						<hr/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Meet & Greet<span class="md">*</span></label>
						<?php echo $rs->meet_greet; ?>
						<select name="meet_greet" class="form-control" id="meet_greet">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Driver</label>
						<select name="return_driver" class="form-control" id="return_driver">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Baby Seat<span class="md">*</span></label>
						<?php echo $rs->baby_seat; ?>
						<select name="meet_greet" class="form-control" id="meet_greet">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Vehicle</label>
						<select name="return_driver" class="form-control" id="return_driver">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Boost Seat<span class="md">*</span></label>
						<?php echo $rs->booster; ?>
						<select name="boost_seat" class="form-control" id="boost_seat">
							<?php echo $this->Options(1,50);?>
						</select>
						<label>Dogs<span class="md">*</span></label>
						<select name="dogs" class="form-control" id="dogs">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Type Of Vehicle</label>
						<select name="return_driver" class="form-control" id="return_driver">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Special Luggage<span class="md">*</span></label>
						<?php echo $vehicle_result->luggage; ?>
						<select name="special_luggage" class="form-control" id="special_luggage">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						&nbsp;
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Waiting Time<span class="md">*</span></label>
						<select name="waiting_hours" class="form-control" id="waiting_hours">
							<?php echo $this->Options(1,50);?>
						</select>
						<select name="waiting_minutes" class="form-control" id="waiting_minutes">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						&nbsp;
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Flight Info</label>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Client Price</label>
						<select name="waiting_minutes" class="form-control" id="waiting_minutes">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label>Remarks<span class="md">*</span></label>
						<select name="passengers" class="form-control" id="passengers">
							<?php echo $this->Options(1,50);?>
						</select>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="form-group">
						<label>Meeting Point</label>
						<select name="luggage" class="form-control" id="luggage">
							<?php echo $this->Options(1,20);?>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Email<span class="md">*</span></label>
						<input type="text" class="form-control" name="email" id="email" value="<?php echo $rs->email; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Phone<span class="md">*</span></label>
						<input type="text" class="form-control" name="phone" id="phone" value="<?php echo $rs->phone; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Skype Account</label>
						<?php echo $driver_result->skype; ?>
						<input type="text" class="form-control" name="skype" id="skype" value="<?php echo $driver_result->skype; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Additional Information</label>
						<?php echo $driver_result->additional_info; ?>
						<textarea class="form-control" name="additional_info" id="additional_info">
							<?php echo $driver_result->additional_info; ?>
						</textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Company Name</label>
						<input type="text" class="form-control" name="company_name" id="company_name" value="<?php echo $driver_result->company_name; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Vat</label>
						<input type="text" class="form-control" name="vat" id="vat" value="<?php echo $driver_result->vat; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Driver Company Address</label>
						<input type="text" class="form-control" name="company_address" id="company_address" value="<?php echo $driver_result->driver_company_address; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Tax %</label>
						<input type="text" class="form-control" name="tax" id="tax" value="<?php echo $driver_result->tax; ?>">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Partner Driver</label>
						<?php if($driver_result->partner_driver=="1"): $pdvr='checked="checked"'; else: $pdvr='';endif; ?>
						<input type="checkbox" name="partner_driver" id="partner_driver" value="1" <?php echo $pdvr;?>>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Commission</label>
						<?php echo $driver_result->commission; ?>
						<select class="form-control" name="commission" id="commission">
							<?php
							for($i=0;$i<=80;$i++):
								echo '<option value="'.$i.'">'.$i.'%</option>';
							endfor;
							?>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">&nbsp;</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="form-group text-center">
				<input type="hidden" name="createfrm" value="1">
				<input type="hidden" name="did" value="<?php echo $did; ?>">
				<button type="button" name="process_data" class="btn btn-primary process_data" value="Submit">Submit</button>
				<button type="button" name="search_reset" class="btn btn-primary btn-reset" value="Reset">Reset</button>
			</div>
		</div>
	</div>
</form>