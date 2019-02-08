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

	function Options($start=0,$end=0) {
		$option='';
		for($i=$start;$i<$end;$i++):
			$option.='<option value="'.$i.'">'.$i.'</option>';
		endfor;
		return $option;
	}

	function ListIT()
	{
		global $wpdb;
		echo $user_id = get_current_user_id();
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
						echo '<td></td>';
						echo '<td></td>';
						echo '<td></td>';
						echo '<td><a href="javascript:;" data-id="'.$rs->id.'" class="editit"><i class="fa fa-edit editcls">Booking Details</i></a>&nbsp;&nbsp;';
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
			$did = $_POST['id'];
			$query = "select * from wp_cab_booking where id=".$did;
			$result = $wpdb->get_results($query);
			$rs = $result[0];
		endif;

		$vehiclequery = "select * from wp_cab_vehicle where company_id=".$user_id;
		$vehicle_result = $wpdb->get_results($vehiclequery);
		$vehicle_result = $vehicle_result[0];

		$driverquery = "select * from wp_cab_drivers where company_id=".$user_id;
		$driver_result = $wpdb->get_results($vehiclequery);
		$driver_result = $driver_result[0];

		$langarr = array("gb"=>"English","es"=>"Español","nl"=>"Nederlands","de"=>"Deutsch","fr"=>"Français","it"=>"Italiano","pt"=>"Portugues","ru"=>"Русский","no"=>"norsk");
		$gender = array("male"=>"Male","female"=>"Female");
		include_once('bookings.inc.php');
	}
}