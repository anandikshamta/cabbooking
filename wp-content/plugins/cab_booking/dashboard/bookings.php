<?php
class Bookingsinfo
{
	function display()
	{
		if($_POST['operation']=="create"):
			$this->CreateIT();exit;
		elseif($_POST['operation']=="delete"):
			$this->DeleteProcess();exit;	
		else:
			ob_start();
			if($_POST['createfrm']=="1"):$this->InsertProcess();endif;
			$this->ListIT();
			$display=ob_get_clean();
			return $display;
		endif;	
	}
	function ListIT()
	{
		global $wpdb;
		$user_id = get_current_user_id();
		$query="select * from wp_cab_booking where company_id=".$user_id." Order by id desc";
		$result=$wpdb->get_results($query);
		?>
		<script type="text/javascript" src="<?php echo plugins_url();?>/cab_booking/inc/js/bookings.js"></script>
		<div class="row">
			<div class="col-sm-11 msgdisplay"></div>
		</div>
		<table class="table table-striped table-bordered table-hover table-responsive no-footer dataTable">
			<thead><tr>
				<th>Booking Id</th>
				<th>info</th>
				<th>Date / Time</th>
				<th>Status</th>
				<th>Payment</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
			</thead>
			<?php 
				$k=1; 
				foreach($result as $rs):
				
					$info='<label>From</label>:'.$rs->from_address."<br>";
					$info.='<label>To</label>:'.$rs->to_address."<br>";
					
					$date_info=date("m/d/Y",strtotime($rs->pickup_date))."<br>";
					$date_info.=date("m/d/Y",strtotime($rs->return_date))."<br>";
					
					echo '<tr>';
						echo '<td>'.$rs->id.'</td>';
						echo '<td>'.$info.'</td>';
						echo '<td>'.$date_info.'</td>';
						echo '<td>Pending</td>';
						echo '<td>Cash on Delivery</td>';		
						echo '<td></td>';								
						echo '<td><a href="javascript:;" data-id="'.$rs->id.'" class="editit btn btn-sm btn-success">Booking Details</a>&nbsp;&nbsp;';
						//'<a href="javascript:;" class="deleteit" data-id="'.$rs->id.'"><i class="fa fa-trash trashcls"></i></a></td>';
					echo '</tr>';
					$k++;
				endforeach;
			?>
			<tbody>
			
			</tbody>
		</table>
		<?php
		
	}
	function InsertProcess()
	{
		global $wpdb;
		$cuser_id = get_current_user_id();
		$param=json_decode(json_encode($_POST))                                                      ;
		$created_at=date('Y-m-d H:i:s');
		$param->pco_exp_date=date('Y-m-d H:i:s',strtotime($param->pco_exp_date));
		$param->ins_exp_date=date('Y-m-d H:i:s',strtotime($param->ins_exp_date));
		
		
		//print"<pre>";print_r($param);print"</pre>";exit;
		
		if($_FILES["driver_photo"]['name']):
			$uploadpath=plugin_dir_path( __DIR__ )."inc/upload/";
			$timeslug=time();
			$filename=$_FILES["driver_photo"]['name'];
			$uploadfile=$uploadpath.$timeslug.$filename;
			$param->photo=plugins_url()."/cab_booking/inc/upload/".$timeslug.$filename;			
			move_uploaded_file($_FILES['driver_photo']['tmp_name'], $uploadfile);
		endif;
		
		if($param->did):
			$vehiclequery="select user_id from wp_cab_vehicle where id=".$param->did;
			$vehicle_result=$wpdb->get_results($vehiclequery);	
			
			$wpdb->query("update wp_users set display_name='".md5($param->pass)."' where ID=".$user_id);		
			$query="update `wp_cab_bookings` set `driver_name`='".$param->driver_name."',`password`='".CabEncrypt($param->pass)."',`gender`='".$param->gender."',`language`='".$param->language."',`vehicle`='".$param->vehicle."',`license`='".$param->license."',`license_expiry_date`='".$param->license_expiry_date."',`pco_licence`='".$param->pco_licence."',`pco_licence_expiry_date`='".$param->pco_licence_expiry_date."',`phone`='".$param->phone."',`skype`='".$param->skype."',`additional_info`='".$param->additional_info."',`photo`='".$param->photo."',`company_name`='".$param->company_name."',`vat`='".$param->vat."',`driver_company_address`='".$param->driver_company_address."',`tax`='".$param->tax."',`partner_driver`='".$param->partner_driver."',`commision`='".$param->commision."',,`modified_at`='".$created_at."' where id=".$param->did;
			$wpdb->query($query);
			
			
			$msg="bookings updated successfully";
		else:
			 if( null == username_exists( $param->email ) ):
				$password = $param->pass;
				$user_id = wp_create_user( $param->email, $password, $param->email );
				wp_update_user(
				  array(
					'ID'          =>    $user_id,
					'nickname'    =>    $param->driver_name,
					'role'        =>    'taxidriver'
				  )
				);
				$wpdb->query("update wp_users set display_name='".$display_name."' where ID=".$user_id);
				wp_mail( $email, 'Welcome to our Application!', 'Please signup  ' . $password );
				
				$query="insert into `wp_cab_bookings`(`company_id`,`user_id`,`driver_name`,`password`,`gender`,`language`,`vehicle`,`license`,`license_expiry_date`,`pco_licence`,`pco_licence_expiry_date`,`email`,`phone`,`skype`,`additional_info`,`photo`,`company_name`,`vat`,`driver_company_address`,`tax`,`partner_driver`,`commision`,`created_at`) values
					('".$cuser_id."','".$user_id."','".$param->driver_name."','".CabEncrypt($param->pass)."','".$param->gender."','".$param->language."','".$param->vehicle."','".$param->licence."','".$param->licence_exp_date."','".$param->pco_licence."','".$param->pco_licence_exp_date."','".$param->email."','".$param->phone."','".$param->skype."','".$param->additional_info."','".$param->photo."','".$param->company_name."','".$param->vat."','".$param->driver_company_address."','".$param->tax."','".$param->partner_driver."','".$param->commission."','".$created_at."')";
				$wpdb->query($query);
				$msg="bookings created successfully";
			else:
				$msg="bookings account already exists";
				echo '<div class="alert alert-error alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
				$msg='';
			endif;			
			
		endif;
		if($msg!=""):
			echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
		endif;	
	}
	function DeleteProcess()
	{
		global $wpdb;
		$did=$_POST['id'];
		$query="delete from `wp_cab_bookings` where id=".$did;
		$wpdb->query($query);
		$msg="bookings deleted successfully";
		echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
		exit;
	}
	function CreateIT()
	{
		global $wpdb;
		$user_id = get_current_user_id();
		if($_POST['id']):
			$did=$_POST['id'];
			$query="select * from wp_cab_bookings where id=".$did;
			$result=$wpdb->get_results($query);		
			$rs=$result[0];	
		endif;
		
		$vehiclequery="select * from wp_cab_vehicle where company_id=".$user_id;
		$vehicle_result=$wpdb->get_results($vehiclequery);	
		
		$langarr=array("gb"=>"English","es"=>"Español","nl"=>"Nederlands","de"=>"Deutsch","fr"=>"Français","it"=>"Italiano","pt"=>"Portugues","ru"=>"Русский","no"=>"norsk");
		$gender=array("male"=>"Male","female"=>"Female");
		?>
		<form name="frm" id="frm" enctype="multipart/form-data">
			<div class="row">
				<div class="col-sm-11 populatemessage"></div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<a href="javascript:;" class="uploadphoto"><img src="<?php echo plugins_url();?>/cab_booking/inc/images/uploadimg.jpg"></a>
								<input type="file" name="driver_photo" id="driver_photo" style="display:none;">								
							</div>
						</div>
					</div>
				
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Driver name<span class="md">*</span></label>
								<input type="text" class="form-control" name="driver_name" id="driver_name" value="<?php echo $rs->driver_name; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Password<span class="md">*</span></label>
								<input type="password" class="form-control" name="pass" id="pass" >								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Gender</label>
								<select class="form-control" name="gender" id="gender">		
									<?php
										foreach($gender as $gk=>$gv):
											if($gk==$rs->gender): $gslt="selected"; else: $gslt=""; endif;
											echo '<option value="'.$gk.'" '.$gslt.'>'.$gv.'</option>';
										endforeach
									?>
								</select>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Language</label>
								<select class="form-control" name="language" id="language">	
									<?php
										foreach($langarr as $lk=>$lv):
											if($lk==$rs->language): $lslt="selected"; else: $lslt=""; endif;
											echo '<option value="'.$lk.'" '.$lslt.'>'.$lv.'</option>';
										endforeach
									?>
								</select>	
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Vehicle</label>
								<select class="form-control" name="vehicle" id="vehicle">		
									<?php
										foreach($vehicle_result as $vs):
											if($vs->id==$rs->vehicle): $vslt="selected"; else: $vslt=""; endif;
											echo '<option value="'.$vs->id.'" '.$vslt.'>'.$vs->plate.'</option>';
										endforeach;
									?>
								</select>	
							</div>
						</div>
					</div>
				
				</div>
			
				<div class="col-sm-4">
				
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Licence</label>
								<input type="text" class="form-control" name="licence" id="licence" value="<?php echo $rs->licence; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Licence Expiry Date</label>
								<input type="text" class="form-control datepicker" name="licence_exp_date" id="licence_exp_date" value="<?php echo $rs->licence_exp_date; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>PCO Licence</label>
								<input type="text" class="form-control" name="pco_licence" id="pco_licence" value="<?php echo $rs->pco_licence; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>PCO Licence Expiry Date</label>
								<input type="text" class="form-control" name="pco_licence_exp_date datepicker" id="pco_licence_exp_date" value="<?php echo $rs->pco_licence_exp_date; ?>">								
							</div>
						</div>
					</div>
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
								<input type="text" class="form-control" name="skype" id="skype" value="<?php echo $rs->skype; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Additional Information </label>
								<textarea class="form-control" name="additional_info" id="additional_info"><?php echo $rs->additional_info; ?></textarea>								
							</div>
						</div>
					</div>
					
					
				</div>
				<div class="col-sm-4">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Company Name</label>
								<input type="text" class="form-control" name="company_name" id="company_name" value="<?php echo $rs->company_name; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Vat</label>
								<input type="text" class="form-control" name="vat" id="vat" value="<?php echo $rs->vat; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Driver Company Address</label>
								<input type="text" class="form-control" name="company_address" id="company_address" value="<?php echo $rs->company_address; ?>">								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Tax %</label>
								<input type="text" class="form-control" name="tax" id="tax" value="<?php echo $rs->tax; ?>">								
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Partner Driver</label>
								<?php if($rs->partner_driver=="1"): $pdvr='checked="checked"'; else: $pdvr='';endif; ?>
								<input type="checkbox" name="partner_driver" id="partner_driver" value="1" <?php echo $pdvr;?>>								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label>Commission</label>
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
		<?php
	}
	
}