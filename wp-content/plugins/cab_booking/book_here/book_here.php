<?php
class BookHere
{
	function BookCab()
	{
		if($_POST['signstep']=="1"):
			$this->RegisterStep1();
		elseif($_POST['signstep']=="2"):
			$this->RegisterStep2();
		elseif($_POST['signstep']=="3"):
			$this->RegisterStep3();
		else:
			$b = new BookHereForm();
			echo $b->BookhereHtml();
			exit;
		endif;
	}

	function RegisterStep1()
	{
		global $wpdb;
		$arr = array();
		$param = $_POST['frmdata']; 
		//$company = json_decode(CabDecrypt($_POST['ka'])); 
		$company_id = $param['company_id'];
		$pickup_date = date("Y-m-d H:i:s",strtotime($param['pickup_date']." ".$param['pickup_date_hours'].":".$param['pickup_date_mins']));
		$return_date = date("Y-m-d H:i:s",strtotime($param['return_date']." ".$param['return_date_hours'].":".$param['return_date_mins']));
		$created_at = date("Y-m-d H:i:s");

		$insquery = "insert into `wp_cab_booking`(`company_id`,`from_address`,`to_address`,`extra`,`passenger`,`luggage`,`way`,`pickup_date`,`return_date`,`meet_greet`,`baby_seat`,`booster`,`wheelcair`,`promo_code`,`created_date`) values ('".$company_id."','".$param['from']."','".$param['to']."','".$param['extra']."','".$param['passengers']."','".$param['luggage']."','".$param['way']."','".$pickup_date."','".$return_date."','".$param['meet_greet']."','".$param['baby_seat']."','".$param['booster_seat']."','".$param['wheel_chair']."','".$param['promo_code']."','".$created_at."')";

		$wpdb->query($insquery);
		$insert_id = $wpdb->insert_id;
		$arr['id'] = $company_id;
		$arr['book_id'] = $insert_id;
		$data = json_encode($arr);
		$dataenc = CabEncrypt($data);
		$param['pickup_date'] = $pickup_date;
		$responseData = array_merge($arr, $param);
		$response = [
			'data'	=> $responseData,
			'dataenc' => $dataenc
		];
		echo json_encode($response); exit;
	}

	function RegisterStep2()
	{
		global $wpdb;
		$arr = array();
		$param = $_POST['frmdata'];
		//$company = json_decode(CabDecrypt($_POST['ka']));
		//$company_id = $company->id;

		if(!empty($param['bookingId'])) {
			$wpdb->query("update wp_cab_booking set vehicle_id = '".$param['vehicleId']."' where id=".$param['bookingId']." limit 1;");
		}
		$arr['id'] = $param['bookingId'];
		$data = json_encode($arr);
		$dataenc = CabEncrypt($data);
		$responseData = array_merge($arr, $param);
		$response = [
			'data'	=> $responseData,
			'dataenc' => $dataenc
		];
		echo json_encode($response); exit;
	}

	function RegisterStep3()
	{
		global $wpdb;
		$arr = array();
		$param = $_POST['frmdata'];
		$company = json_decode(CabDecrypt($_POST['ka']));

		if( null == username_exists( $param['email'] ) ):
			$password = wp_generate_password( 12, false );
			$user_id = wp_create_user( $param['email'], $password, $param['email'] );
			$display_name=$param['firstname']." ".$param['lastname'];
			
			wp_update_user(
			  array(
				'ID'          =>    $user_id,
				'nickname'    =>    $display_name,
				'role'        =>    'customer'
			  )
			);
			$wpdb->query("update wp_users set display_name='".$display_name."' where ID=".$user_id);
			$wpdb->query("update wp_cab_booking set user_id='".$user_id."' where ID=".$param['bookingId']);
			
			wp_mail( $email, 'Welcome to our Application!', 'Please signup  ' . $password );
		else:
			$user_id = username_exists( $param['email'] );
		endif;
		$arr['user_id'] = $user_id;
		$data = json_encode($arr);
		$dataenc = CabEncrypt($data);
		$responseData = array_merge($arr, $param);
		$response = [
			'data'	=> $responseData,
			'dataenc' => $dataenc
		];
		echo json_encode($response); exit;
	}
}
