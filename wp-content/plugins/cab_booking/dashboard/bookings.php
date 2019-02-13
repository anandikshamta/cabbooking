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

	function Options($start=0, $end=0 , $selected=NULL) {
		$option='';
		for($i=$start;$i<$end;$i++):
			$option .= '<option value="'.$i.'" ' . (($selected == $i) ? ' selected': '').'>'.$i.'</option>';
		endfor;
		return $option;
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
		$param = json_decode(json_encode($_POST));
		$created_at = date('Y-m-d H:i:s');
		$param->pco_exp_date = date('Y-m-d H:i:s', strtotime($param->pco_exp_date));
		$param->ins_exp_date = date('Y-m-d H:i:s', strtotime($param->ins_exp_date));

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
			$bookingqry = "select user_id from wp_cab_booking where id=".$param->did;
			$booking_result = $wpdb->get_results($bookingqry);

			$vehiclequery = "select user_id from wp_cab_vehicle where id=".$param->vehicle;
			$vehicle_result = $wpdb->get_results($vehiclequery);

			//$wpdb->query("update wp_users set display_name='".md5($param->pass)."' where ID=".$user_id);

			$query = " update `wp_cab_booking` set `company_id` = '".$cuser_id."',
						`user_id` = '".$user_id."',
						`from_address` = '".$param->from."',
						`to_address` = '".$param->to."',
						`extra` = '".$param->extra."',
						`passenger` = '".$param->passengers."',
						`luggage`= '".$param->luggage."',
						`way` = '".$param->way."',
						`pickup_date` = '".$pickup_date."',
						`return_date` = '".$return_date."',
						`meet_greet` = '".$param->meet_greet."',
						`baby_seat` = '".$param->baby_seat."',
						`booster` = '".$param->booster_seat."',
						`wheelcair` = '".$param->wheel_chair."',
						`promo_code` = '".$param->promo_code."',
						`driver_id` = '".$param->driver."',
						`vehicle_id` = '".$param->vehicle."',
						`return_driver_id` = '".$param->return_driver."',
						`return_vehicle_id` = '" . $param->return_vehicle . "',
						`created_date` = '".$created_at."' where id = '".$param->did."' ";
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

				$query="insert into `wp_cab_booking`(`company_id`, `user_id`, `from_address`, `to_address`, `extra`, `passenger`, `luggage`, `way`, `pickup_date`, `return_date`,
					`meet_greet`, `baby_seat`, `booster`, `wheelcair`, `promo_code`, `driver_id`, `vehicle_id`, `return_driver_id`, `return_vehicle_id`, `created_date`) values
					('".$cuser_id."', '".$user_id."', '".$param->from."', '".$param->to."', '".$param->extra."', '".$param->passengers."','".$param->luggage."','".$param->way."',
						'".$pickup_date."','".$return_date."','".$param->meet_greet."','".$param->baby_seat."','".$param->booster_seat."','".$param->wheel_chair."','".$param->promo_code."', '".$param->driver."', '".$param->vehicle."', '".$param->return_driver."', '".$param->return_vehicle."', '".$created_at."')";
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
		//$vehicle_result = $vehicle_result[0];

		$driverquery = "select * from wp_cab_drivers where company_id=".$user_id;
		$driver_result = $wpdb->get_results($driverquery);
		//$driver_result = $driver_result[0];

		$langarr = array("gb"=>"English","es"=>"Español","nl"=>"Nederlands","de"=>"Deutsch","fr"=>"Français","it"=>"Italiano","pt"=>"Portugues","ru"=>"Русский","no"=>"norsk");
		$gender = array("male"=>"Male","female"=>"Female");
		include_once('bookings.inc.php');
	}
}