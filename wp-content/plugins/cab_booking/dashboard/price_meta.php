<?php
class PriceMeta
{
	function LoadMeta() {
		if($_REQUEST['action'] == "insert"):
			//$this->InsertPriceMeta();exit;
		elseif($_REQUEST['do_action'] == "crud_radius"):
			$this->CrudRadiusAction(); exit;
		elseif($_REQUEST['do_action'] == "crud_hourly_price"):
			$this->CrudHourlyPriceAction(); exit;
		else:
			$this->CreatePrice(); exit;
		endif;
	}

	function CreatePricing() {
		$this->InsertPriceMeta();
		exit();
	}

	function CrudRadiusAction() {

		switch($_SERVER["REQUEST_METHOD"]) {
		    case "GET":
		    	$param = new Object();
		        $result = $this->getRadius();
		        break;
		    case "POST":
		    	$param = new Object();
		    	$param->radius_upto_distance = $_POST["radius_upto_distance"];
		    	$param->radius_one_way_price = intval($_POST["radius_one_way_price"]);
		    	$param->radius_return_price = $_POST["radius_return_price"];
		        $result = $this->updateRadius($param);
		        break;
		    case "PUT":
		        parse_str(file_get_contents("php://input"), $_PUT);
		        $param = new Object();
		        $param->id = intval($_PUT["id"]);
		        $param->radius_upto_distance = $_PUT["radius_upto_distance"];
		    	$param->radius_one_way_price = intval($_PUT["radius_one_way_price"]);
		    	$param->radius_return_price = $_PUT["radius_return_price"];
		        break;
		    case "DELETE":
		        parse_str(file_get_contents("php://input"), $_DELETE);
		        $result = $this->deleteRadius(intval($_DELETE["id"]));
		        break;
		}

		echo json_encode($result);
		exit();
	}

	function CreatePrice()
	{
		if($_POST['id']):
			global $wpdb;
			$pricing_id = $_POST['id'];
			$user_id = get_current_user_id();
			$query = "select price.*, price_meta_data.*, price_outof_hours.*".
						" from wp_cab_pricing price".
						" join wp_cab_pricing_meta_data price_meta_data on price_meta_data.pricing_id = price.id ".
						" join wp_cab_pricing_meta_out_of_hours_pricing price_outof_hours on price_outof_hours.pricing_id = price.id ".
						" where price.id=".$pricing_id;
			$result = $wpdb->get_results($query);
			$rs = $result[0];
		endif;
		include_once('price_meta.inc.php');
	}

	function InsertPriceMeta()
	{
		//$redirect=get_bloginfo('url');
		global $wpdb;
		if($_POST['pricing_id']):
			$pricingId = $_POST['pricing_id'];
			$user_id = get_current_user_id();
			$query = "select price.*".
						" from wp_cab_pricing price".
						" join wp_cab_pricing_meta_data price_meta_data on price_meta_data.pricing_id = price.id ".
						" where price.id=".$pricingId;
			$result = $wpdb->get_results($query);
			$rs = $result[0];
		endif;

		$cuser_id = get_current_user_id();
		$param = json_decode(json_encode($_POST));
		$created_at = date('Y-m-d H:i:s');
		$param->pco_exp_date = date('Y-m-d H:i:s', strtotime($param->pco_exp_date));
		$param->ins_exp_date = date('Y-m-d H:i:s', strtotime($param->ins_exp_date));
		$param->created_at = $created_at;

		if($param->pricing_id):

			$qry_meta_data = "UPDATE `wp_cab_pricing_meta_data` SET " . $this->raw_price_meta_query($param) .
						" WHERE `pricing_id`= $param->pricing_id";
			$wpdb->query($qry_meta_data);

			$qry_outofhours = "UPDATE `wp_cab_pricing_meta_out_of_hours_pricing` SET " .
								$this->raw_price_meta_outof_hour_price($param) .
								" WHERE `pricing_id`= $param->pricing_id";
			$wpdb->query($qry_outofhours);

			$msg = "pricing updated successfully";
		else:

			$qry_meta_data = "INSERT INTO `wp_cab_pricing_meta_data` SET " .
							$this->raw_price_meta_query($param);
			echo $qry_meta_data;
			$wpdb->query($qry_meta_data);

			$qry_outofhours = "INSERT INTO `wp_cab_pricing_meta_out_of_hours_pricing` SET " .
								$this->raw_price_meta_outof_hour_price($param);
			echo $qry_outofhours;
			$wpdb->query($qry_outofhours);

			$msg = "pricing created successfully";
		endif;
		if($msg!=""):
			echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
		endif;
	}

	private function updateRadius($param) {
		global $wpdb;
		if($param->id):
			$qry_radius = "UPDATE `wp_cab_pricing_meta_radius_pricing` SET " . $this->raw_price_meta_radius_price($param) .
						" WHERE `pricing_id`= $param->id";
			$wpdb->query($qry_radius);
			$msg = "Radius updated successfully";
		else:
			$qry_radius = "INSERT INTO `wp_cab_pricing_meta_radius_pricing` SET " .
							$this->raw_price_meta_radius_price($param);
			$wpdb->query($qry_radius);
			$msg = "Radius inserted successfully";
		endif;
	}

	private function getRadius() {
		global $wpdb;
		$qry_radius = "select * from `wp_cab_pricing_meta_radius_pricing`";
		$result = $wpdb->get_results($qry_radius);
		//$rs = $result[0];
		return $result;
	}

	private function deleteRadius() {
		global $wpdb;
		if($param->id):
			$qry_radius = "DELETE FROM `wp_cab_pricing_meta_radius_pricing` ".
						" WHERE `pricing_id`= $param->id and id = $id ";
			$wpdb->query($qry_radius);
			$msg = "Radius updated successfully";
		endif;
	}

	private function updateHourlyPrice() {
		global $wpdb;
		if($param->id):
			$qry_radius = "UPDATE `wp_cab_pricing_meta_radius_pricing` SET " .
							$this->raw_price_meta_outof_hour_price($param) .
							" WHERE `pricing_id`= $param->id";
			$wpdb->query($qry_radius);

			$msg = "Hourly price updated successfully";
		else:
			$qry_outofhours = "INSERT INTO `wp_cab_pricing_meta_dynamic_hour_price` SET " .
							$this->raw_price_meta_outof_hour_price($param);;
			$wpdb->query($qry_outofhours);
			$msg = "Hourly price inserted successfully";
		endif;
	}

	private function raw_price_meta_query($param) {
		$raw_qry = "`pricing_id` = '1', `price_by_passenger` = '". $param->price_by_passenger . "',
		`oneway_price` = '" . $param->oneway_price . "', `return_price` = '" . $param->return_price . "',
		`time_pricing` = '" . $param->time_pricing . "',
		`return_time_pricing` = '" . $param->return_time_pricing . "',
		`return_discount` = '" . $param->return_discount . "',
		`base_pickup_price` = '". $param->base_pickup_price . "',
		`dropoff_base_price` = '" . $param->dropoff_base_price . "',
		`standing_fee` = '" . $param->standing_fee . "',
		`minimum_price` = '" . $param->minimum_price ."',
		`way_stop_minimum_price` = '" . $param->way_stop_minimum_price . "',
		`meet_greet` = '" . $param->meet_greet . "', `baby_seat` = '" . $param->baby_seat . "',
		`booster_seat` = '".$param->booster_seat . "',
		`passenger_fee_start_from` = '".$param->passenger_fee_start_from . "',
		`passenger_fee` = '" . $param->passenger_fee . "', `dogs_fee` = '" . $param->dogs_fee . "',
		`special_luggage_fee` = '" . $param->special_luggage_fee . "',
		`waiting_time_price` = '" . $param->waiting_time_price . "',
		`fixed_hourly_price` = '" . $param->fixed_hourly_price . "',
		`created_at` = '" . $param->created_at . "', `modified_at` = '" . $param->created_at . "'";
		return $raw_qry;
	}

	private function raw_price_meta_dynamic_hour_price($param) {
		$raw_qry = "`pricing_id` = '1',
		`dynamic_price_per_hour` = '" . $param->dynamic_price_per_hour . "',
		`dynamic_price_hour` = '" . $param->dynamic_price_hour . "',
		`created_at` = '" . $param->created_at . "', `modified_at` = '" . $param->created_at . "'";
		return $raw_qry;
	}

	private function raw_price_meta_outof_hour_price($param) {
		$raw_qry = "`pricing_id` = '1',
		`price_inc_special_dates` = '" . $param->price_inc_special_dates . "',
		`interval_from_hour` = '" . $param->interval_from_hour . "',
		`interval_from_min` = '" . $param->interval_from_min . "',
		`interval_to_hour` = '" . $param->interval_to_hour . "',
		`interval_to_min` = '" . $param->interval_to_min . "',
		`apply_over_fixed_price` = '" . $param->apply_over_fixed_price . "',
		`day1` = '" . $param->day1 . "',
		`day2` = '" . $param->day2 . "',
		`day3` = '" . $param->day3 . "',
		`day4` = '" . $param->day4 . "',
		`day5` = '" . $param->day5 . "',
		`day6` = '" . $param->day6 . "',
		`day7` = '" . $param->day7 . "',
		`night1` = '" . $param->n1 . "',
		`night2` = '" . $param->n2 . "',
		`night3` = '" . $param->n3 . "',
		`night4` = '" . $param->n4 . "',
		`night5` = '" . $param->n5 . "',
		`night6` = '" . $param->n6 . "',
		`night7` = '" . $param->n7 . "',
		`created_at` = '" . $created_at . "', `modified_at` = '" . $created_at . "'";
		return $raw_qry;
	}

	private function raw_price_meta_radius_price($param) {
		$raw_qry = "`pricing_id` = '1',
		`upto_distance` = '" . $upto_distance . "',
		`oneway_price` = '" . $oneway_price . "',
		`return_price` = '" . $return_price . "',
		`created_at` = '" . $created_at . "', `modified_at` = '" . $created_at . "'";
		return $raw_qry;
	}
}
