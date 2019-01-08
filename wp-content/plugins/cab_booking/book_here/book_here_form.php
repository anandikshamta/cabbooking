<?php
class BookHereForm
{
	function BookhereHtml()
	{
		ob_start();
		?>
			<link rel="stylesheet" href="<?php echo plugins_url();?>/cab_booking/inc/css/bootstrap.min.css" >
			<link href="<?php echo plugins_url();?>/cab_booking/inc/css/smart_wizard.css" rel="stylesheet" type="text/css" />
			<link href="<?php echo plugins_url();?>/cab_booking/inc/css/smart_wizard_theme_arrows.css" rel="stylesheet" type="text/css" />
			<link rel="stylesheet" href="<?php echo plugins_url();?>/cab_booking/inc/css/jquery-ui.css" >
			<link rel="stylesheet" href="<?php echo plugins_url();?>/cab_booking/inc/css/book_here.css" >

			<script src="<?php echo plugins_url();?>/cab_booking/inc/js/jquery-3.3.1.min.js"></script>
			<script src="<?php echo plugins_url();?>/cab_booking/inc/js/jquery-ui.js"></script>
			
			
			<script src="<?php echo plugins_url();?>/cab_booking/inc/js/jquery.smartWizard.min.js"></script>
			<script src="<?php echo plugins_url();?>/cab_booking/inc/js/book_here.js"></script>

			<div class="row">
				<div class="col-lg-3">&nbsp;</div>
				<div id="smartwizard" class="col-lg-6">
				<ul>
					<li><a href="#step-1" class="stepbord">Step 1&nbsp;:&nbsp;<small>Your Journey</small></a></li>
					<li><a href="#step-2">Step 2&nbsp;:&nbsp;<small>Quotation</small></a></li>
					<li><a href="#step-3">Step 3&nbsp;:&nbsp;<small>Personal Details</small></a></li>
					<li><a href="#step-4">Step 4&nbsp;:&nbsp;<small>Payment/Confirmation</small></a></li>
				</ul>

					<div>
						<div id="step-1" class="step1detail">
						   <?php $this->Step1();?>
						</div>
						<div id="step-2" class="">
							<?php $this->Step2();?>
						</div>
						<div id="step-3" class="">
							<?php $this->Step3();?>
						</div>
						<div id="step-4" class="">
							<?php $this->Step4();?>
						</div>
					</div>
				</div>
				<div class="col-lg-3">&nbsp;
					<input type="hidden" id="csp">
					<input type="hidden" id="base_url_pop" value="<?php bloginfo('url')?>">
					<input type="hidden" id="ka" value="<?php echo $_GET['ka'];?>">
					<input type="hidden" id="booking-id"/>
					<input type="hidden" id="user-id"/>
				</div>
			</div>
		<?php
		$html=ob_get_clean();
		return $html;
	}

	function Options($start=0,$end=0) {
		$option='';
		for($i=$start;$i<$end;$i++):
			$option.='<option value="'.$i.'">'.$i.'</option>';
		endfor;
		return $option;
	}

	function Step1() {
		$company = json_decode(CabDecrypt($_REQUEST['ka'])); 
		$company_id = $company->id;
	?>
		<form name="frm_step1" id="frm_step1">
		<div class="container">
			<div class="row">
				<div class="col-sm-11 step1error"></div>
			</div>
		  <div class="row">
			<div class="col col-lg-4 card cardbox">
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label>From<span class="md">*</span></label>
							<input type="text" class="form-control" name="from" id="from" placeholder="From Address">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label>To<span class="md">*</span></label>
							<input type="text" class="form-control" name="to" id="to" placeholder="To Address">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label>Extra Stops</label>
							<input type="text" class="form-control" name="extra" id="extra" placeholder="Extra Stop Address" >
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
							<label>Luggage</label>
							<select name="luggage" class="form-control" id="luggage">
								<?php echo $this->Options(1,20);?>
							</select>
						</div>
					</div>
				</div>

			</div>

			<div class="col col-lg-7 card cardbox">

				<div class="row">
					<div class="col-sm-12">
					<div class="form-check form-check-inline">
						<input class="form-check-input way" type="radio" class="form-control" name="way" id="way" value="1" checked="checked"><label class="form-check-label" for="inlineRadio1">One way</label>&nbsp;&nbsp;
						<input class="form-check-input way" type="radio" class="form-control" name="way" id="way" value="2"><label class="form-check-label" for="inlineRadio1">Return</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Pick up date<span class="md">*</span></label>
							<input type="text" class="form-control datepicker" name="pickup_date" id="pickup_date">
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Hours<span class="md">*</span></label>
							<select name="pickup_date_hours" class="form-control" id="pickup_date_hours">
								<?php echo $this->Options(00,24);?>
							</select>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Minutes<span class="md">*</span></label>
							<select name="pickup_date_mins" class="form-control" id="pickup_date_mins">
								<?php echo $this->Options(00,60);?>
							</select>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row returndateSelect" style="display:none;">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Return date<span class="md">*</span></label>
							<input type="text" class="form-control datepicker" name="return_date" id="return_date">
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Hours<span class="md">*</span></label>
							<select name="return_date_hours" class="form-control" id="return_date_hours">
								<?php echo $this->Options(00,24);?>
							</select>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Minutes<span class="md">*</span></label>
							<select name="return_date_mins" class="form-control" id="return_date_mins">
								<?php echo $this->Options(00,60);?>
							</select>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<div class="form-group">
							<label>Meet & Greet</label>
							<select name="meet_greet" class="form-control" id="meet_greet">
								<option value="yes">Yes</option>
								<option value="no">No</option>
							</select>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Baby Seat</label>
							<select name="baby_seat" class="form-control" id="baby_seat">
								<?php echo $this->Options(0,15);?>
							</select>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Booset Seat</label>
							<select name="booster_seat" class="form-control" id="booster_seat">
								<?php echo $this->Options(0,15);?>
							</select>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="form-group">
							<label>Wheel Chair</label>
							<select name="wheel_chair" class="form-control" id="wheel_chair">
								<option value="yes">Yes</option>
								<option value="no">No</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label>Promo code</label>
							<input type="text" class="form-control" name="promo_code" id="promo_code" placeholder="Promo Code" >
						</div>
					</div>
				</div>

			</div>
		  </div>

		  <input type="hidden" name="company_id" value="<?php echo $company_id; ?>">
		  
		</div>
		</form>
		<?php
	}

	function Step2() {
	?>
		<div class="container">
			<div class="row">
				<div class="col-sm-11  step2error"></div>
			</div>
		  <div class="row">

			<div class="col col-lg-6 card cardbox">
				<div class="row">
					<div class="col-sm-12">
						<iframe height="470px" width="100%" frameborder="0" scrolling="no" src="https://developers.google.com/maps/documentation/javascript/examples/full/add_map_iframe" allowfullscreen="">
						</iframe>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">&nbsp;</div>
				</div>
			</div>

			<div class="col col-lg-5 card cardbox">
				<div class="row">
					<div class="col-lg-12">
						<label>From: </label>
						<span class="book-from"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>To: </label>
						<span class="book-to"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div style="font-size:14px;font-weight: bold;">Date & Time</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>One Way Date & Time:</label>
						<span class="one-way-date"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>Distance / Time:</label>
						<span class="distance"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div style="font-size:14px;font-weight: bold;">Options</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Passengers:</label>
						<span class="passengers"></span>
					</div>
					<div class="col-sm-6">
						<label>Baby Seat:</label>
						<span class="baby_seat"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Return:</label>
						<span class="return"></span>
					</div>
					<div class="col-sm-6">
						<label>Boost Seat:</label>
						<span class="booster_seat"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Luggage:</label>
						<span class="luggage"></span>
					</div>
					<div class="col-sm-6">
						<label>Wheelchair:</label>
						<span class="wheelchair"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<label>Meet & Greet:</label>
						<span class="meet_greet"></span>
					</div>
				</div>
			</div>
			<div class="col-lg-11">&nbsp;</div>
			<div class="col-lg-11 card cardbox">
				<?php
					global $wpdb;
					$user_id = get_current_user_id();
					$query = "select vehicle.*, drivers.photo as photo from wp_cab_vehicle vehicle".
							" join wp_cab_drivers drivers on vehicle.id = drivers.vehicle".
							" where vehicle.available = 1";
					$result = $wpdb->get_results($query);
					if( $result ) {
						foreach($result as $val) {
				?>
				<div class="row">
					<div class="col-sm-4">
						<img src="<?php echo $val->photo; ?>" width="200" alt="Model Image" />
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<div><?php echo $val->brand; ?></div>
							<div><?php echo $val->seats; ?></div>
							<div><?php echo $val->luggage; ?></div>
						</div>
					</div>
					<div class="col-sm-1">
						<a href="javascript:void(0);">
							<button class="btn btn-success get-quote" data-vehicle-id="<?php echo $val->id; ?>">Request Quote</button>
						</a>
					</div>
				</div>
				<?php
						}
					}
				?>
			</div>
		  </div>

		</div>
		<?php
	}

	function Step3() {
	?>
		<form name="frm_step3" id="frm_step3" method="post">
		<div class="container">
			<div class="row">
				<div class="col-sm-11 step3error"></div>
			</div>
		  <div class="row">
			<div class="col col-lg-6 card cardbox">
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>First Name<span class="md">*</span></label>
							<input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name">
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Last Name<span class="md">*</span></label>
							<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label>Mobile<span class="md">*</span></label>
							<input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile">
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Email<span class="md">*</span></label>
							<input type="text" class="form-control" name="email" id="email" placeholder="Email Address">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label>Remarks</label>
							<input type="text" class="form-control" name="remarks" id="remarks" placeholder="Remarks">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-1">
						<button class="btn btn-success get-user" type="button">Create User</button>
					</div>
				</div>
			</div>

			<div class="col col-lg-5 card cardbox">
				<div class="row">
					<div class="col-lg-12">
						<label>From: </label>
						<span class="book-from"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>To: </label>
						<span class="book-to"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div style="font-size:14px;font-weight: bold;">Date & Time</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>One Way Date & Time:</label>
						<span class="one-way-date"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<label>Distance / Time:</label>
						<span class="distance"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div style="font-size:14px;font-weight: bold;">Options</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Passengers:</label>
						<span class="passengers"></span>
					</div>
					<div class="col-sm-6">
						<label>Baby Seat:</label>
						<span class="baby_seat"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Return:</label>
						<span class="return"></span>
					</div>
					<div class="col-sm-6">
						<label>Boost Seat:</label>
						<span class="booster_seat"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<label>Luggage:</label>
						<span class="luggage"></span>
					</div>
					<div class="col-sm-6">
						<label>Wheelchair:</label>
						<span class="wheelchair"></span>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<label>Meet & Greet:</label>
						<span class="meet_greet"></span>
					</div>
				</div>
			</div>
		  </div>
		</div>
		</form>
		<?php
	}

	function Step4() {
	?>
		<div class="container">
			<div class="row">
				<div class="col-sm-11 step4error"></div>
			</div>
			<div class="row">
				<div class="col-lg-11 card cardbox">
					<div class="row">
						<div class="form-group">
							Payment Confirmation
						</div>
					</div>
					<div class="row">
						<div class="form-check form-check-inline">
							<input class="form-check-input cashondelivery" type="radio"
							 class="form-control" name="cashondelivery"
							 id="cashondelivery" value="1"  checked />
							<label class="form-check-label" for="cashondelivery">Cash On Delivery</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php
	}
}
