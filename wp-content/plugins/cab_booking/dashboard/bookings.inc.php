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
						<?php
							echo $pickup_date = $rs->pickup_date;
							$pickup_date_hours = '';
							$pickup_date_mins = '';
							if($pickup_date != '0000-00-00 00:00:00'):
								$oneway_strtotime = strtotime($rs->pickup_date);
								$pickup_date = date("d/m/y", $oneway_strtotime);
								$pickup_date_hours = date('H', $oneway_strtotime);
								$pickup_date_mins = date('i', $oneway_strtotime);
							else :
								$pickup_date = '';
							endif;
						?>
						<input type="text" class="form-control datepicker" name="pickup_date" id="pickup_date" value="<?php echo $pickup_date; ?>" />
						<input type="text" name="pickup_date_hours" id="pickup_date_hours" value="<?php echo $pickup_date_hours; ?>" />
						<input type="text" name="pickup_date_mins" id="pickup_date_mins" value="<?php echo $pickup_date_mins; ?>" />
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
						<?php
							$return_date = $rs->return_date;
							$returnStatus = 'No';
							$return_date_hours = '';
							$return_date_mins = '';
							if($return_date != '0000-00-00 00:00:00'):
								$returnStatus = 'Yes';
								$return_strtotime = strtotime($rs->return_date);
								$return_date = date("d/m/y", $return_strtotime);
								$return_date_hours = date('H', $return_strtotime);
								$return_date_mins = date('i', $return_strtotime);
							else:
								$return_date = '';
							endif;
						?>
						<input type="text" class="form-control datepicker" name="return_date" id="return_date" value="<?php echo $return_date; ?>" />
						<input type="text" name="return_date_hours" id="return_date_hours" value="<?php echo $return_date_hours; ?>" />
						<input type="text" name="return_date_mins" id="return_date_mins" value="<?php echo $return_date_mins; ?>" />
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label>Estimate Distance</label>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Email</label>
						<input type="text" class="form-control" name="email" id="email" value="<?php echo $rs->email; ?>" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Phone</label>
						<input type="text" class="form-control" name="phone" id="phone" value="<?php echo $rs->phone; ?>" />
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
						<select class="" name="commission" id="commission">
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
		<div class="col-lg-12">
			<div class="form-group">
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
							<label>Return</label>
							<span class="md"><?php echo $returnStatus; ?></span>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Driver</label>
							<select name="driver" class="" id="driver">
								<option value="">Select Driver</option>
								<?php foreach($driver_result as $driver): ?>
								<option value='<?php echo $driver->id; ?>' <?php echo (($rs->return_driver_id == $driver->id) ? ' selected': ''); ?>>
									<?php echo $driver->driver_name; ?>
								</option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Passengers</label>
							<input type="text" name="passengers" id="passengers" class="form-control"
							value="<?php echo $rs->passenger; ?>" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Vehicle</label>
							<select name="vehicle" class="" id="vehicle">
								<option value="">Select Vehicle</option>
								<?php foreach($vehicle_result as $vehicle): ?>
								<option value='<?php echo $vehicle->id; ?>' <?php echo (($rs->return_vehicle_id == $vehicle->id) ? ' selected': ''); ?>>
									<?php echo $vehicle->brand; ?>
								</option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Luggage</label>
							<input type="text" name="luggage" id="luggage" class="form-control"
							value="<?php echo $rs->luggage; ?>" />
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
							<label>Meet & Greet</label>
							<select name="meet_greet" class="" id="meet_greet">
								<?php echo $this->Options(0, 50, $rs->meet_greet);?>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Driver</label>
							<select name="return_driver" class="" id="return_driver">
								<option value="">Select Driver</option>
								<?php foreach($driver_result as $driver): ?>
								<option value='<?php echo $driver->id; ?>' <?php echo (($rs->return_driver_id == $driver->id) ? ' selected': ''); ?>>
									<?php echo $driver->driver_name; ?>
								</option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Baby Seat</label>
							<select name="baby_seat" class="" id="baby_seat">
								<?php echo $this->Options(0, 50, $rs->baby_seat);?>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Vehicle</label>
							<select name="return_vehicle" class="" id="return_vehicle">
								<option value="">Select Vehicle</option>
								<?php foreach($vehicle_result as $vehicle): ?>
								<option value='<?php echo $vehicle->id; ?>' <?php echo (($rs->return_vehicle_id == $vehicle->id) ? ' selected': ''); ?>>
									<?php echo $vehicle->brand; ?>
								</option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Boost Seat</label>
							<select name="booster_seat" class="" id="booster_seat">
								<?php echo $this->Options(0, 50, $rs->booster);?>
							</select>
							<label>Dogs</label>
							<input type="text" name="dogs" id="dogs" class="form-control"
							value="<?php echo $rs->dogs; ?>" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Type Of Vehicle</label>
							<select name="vehicle_type" class="" id="vehicle_type">
								<option value="">Select Vehicle Type</option>
								<?php foreach($vehicle_result as $vehicle): ?>
								<option value='<?php echo $vehicle->id; ?>' <?php echo (($rs->return_vehicle_id == $vehicle->id) ? ' selected': ''); ?>>
									<?php echo $vehicle->brand; ?>
								</option>
								<?php endforeach; ?>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Special Luggage</label>
							<input type="text" name="special_luggage" id="special_luggage" class="form-control"
							value="<?php echo $rs->special_luggage; ?>" />
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
							<label>Waiting Time</label>
							<input type="text" name="waiting_hours" id="waiting_hours" class="form-control"
							value="<?php echo $rs->waiting_hours; ?>" /> Hours
							<input type="text" name="waiting_minutes" id="waiting_minutes" class="form-control"
							value="<?php echo $rs->waiting_minutes; ?>" /> Minutes
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
							<!-- <label>Flight Info</label> -->
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Client Price</label>
							<input type="text" name="client_price" id="client_price" class="form-control"
							value="<?php echo $rs->client_price; ?>" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Remarks</label>
							<textarea name="remarks" id="remarks" cols="20" rows="10" class="form-control"></textarea>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Meeting Point</label>
							<textarea name="meeting_point" id="meeting_point" cols="20" rows="10" class="form-control"></textarea>
						</div>
					</div>
				</div>
			</div>
		</div>
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