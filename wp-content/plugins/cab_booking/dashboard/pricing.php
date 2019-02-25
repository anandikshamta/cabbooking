<?php
class Pricinginfo
{
	function display()
	{
//print_r($_REQUEST);
		if($_POST['operation']=="create"):
			$this->CreateIT();exit;
		elseif($_POST['operation']=="delete"):
			$this->DeleteProcess();exit;
		elseif($_POST['operation']=="meta_process"):
			$obj = new PriceMeta();
			$obj->LoadMeta();exit;
		else:
			ob_start();
			if($_POST['createfrm']=="1"):$this->InsertProcess();endif;
			//if($_POST['createpricing']=="1"):
			if($_POST['createpricingmeta']=="1"):
				$obj = new PriceMeta();
				$obj->CreatePricing();exit;
			endif;
			if(isset($_REQUEST['do_action'])):
				$obj = new PriceMeta();
				$obj->LoadMeta();exit;
			endif;

//exit;
			$this->ListIT();
			$display = ob_get_clean();
			return $display;
		endif;
	}

	function ListIT()
	{
		global $wpdb;
		$user_id = get_current_user_id();
		$query="select * from wp_cab_pricing where company_id=".$user_id." Order by id desc";
		$result=$wpdb->get_results($query);
		?>
		<script type="text/javascript" src="<?php echo plugins_url();?>/cab_booking/inc/js/pricing.js"></script>
		<div class="row">
			<div class="col-sm-11 msgdisplay"></div>
		</div>
		<table class="table table-striped table-bordered table-hover table-responsive no-footer dataTable">
			<thead><tr>
				<th>Image</th>
				<th>Vehicle description</th>
				<th>Seats</th>
				<th>Bags</th>
				<th>W.Chair</th>
				<th>Trailer</th>
				<th>Booster S</th>
				<th>Baby S</th>
				<th>Special offer</th>
				<th>Extra Info</th>
				<th>Available</th>
				<th>Action</th>
			</tr>
			</thead>
			<?php
				$k=1;
				foreach($result as $rs):
					if($rs->available=="1"): $available="Yes";else: $available="No"; endif;
					echo '<tr>';
						//echo '<td>'.$k.'</td>';
						echo '<td><img src="'.$rs->vimg.'"></td>';
						echo '<td>'.$rs->description.'</td>';
						echo '<td>'.$rs->seats.'</td>';
						echo '<td>'.$rs->bags.'</td>';
						echo '<td>'.$rs->wchair.'</td>';
						echo '<td>'.$rs->trailer.'</td>';
						echo '<td>'.$rs->booster_seat.'</td>';
						echo '<td>'.$rs->baby_seat.'</td>';
						echo '<td>'.$rs->special_offer.'</td>';
						echo '<td>'.$rs->extra_info.'</td>';
						echo '<td>'.$rs->available.'</td>';
						echo '<td><a href="javascript:;" data-id="'.$rs->id.'" class="editit"><i class="fa fa-edit editcls"></i></a>&nbsp;&nbsp;<a href="javascript:;" class="setpricing" data-id="'.$rs->id.'"><i class="glyphicon glyphicon-search "></i></a></td>';
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
		$user_id = get_current_user_id();
		$param=json_decode(json_encode($_POST))                                                      ;
		$created_at=date('Y-m-d H:i:s');
		$param->pco_exp_date=date('Y-m-d H:i:s',strtotime($param->pco_exp_date));
		$param->ins_exp_date=date('Y-m-d H:i:s',strtotime($param->ins_exp_date));

		if($param->did):
			$query="update `wp_cab_pricing` set description='".$param->description."',seats='".$param->seats."',bags='".$param->bags."',wchair='".$param->wchair."',trailer='".$param->trailer."',booster_seat='".$param->booster_seat."',baby_seat='".$param->baby_seat."',special_offer='".$param->special_offer."',extra_info='".$param->extra_info."',available='".$param->available."',`modified_at`='".$created_at."' where id=".$param->did;
			$wpdb->query($query);
			$msg="Pricing updated successfully";
		else:
			/*$query="insert into `wp_cab_Pricing`(`company_id`,`plate`,`brand`,`model`,`color`,`seats`,`luggage`,`available`,`pco_ln`,`pco_exp_date`,`mot`,`ins_exp_date`,`reg_number`,`created_at`) values
					('".$user_id."','".$param->plate."','".$param->brand."','".$param->model."','".$param->color."','".$param->seats."','".$param->luggage."','".$param->available."','".$param->pco_ln."','".$param->pco_exp_date."','".$param->mot."','".$param->ins_exp_date."','".$param->reg_number."','".$created_at."')";
			$wpdb->query($query);
			$msg="Pricing created successfully";*/
		endif;
		echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
	}

	function DeleteProcess()
	{
		global $wpdb;
		$did=$_POST['id'];
		$query="delete from `wp_cab_Pricing` where id=".$did;
		$wpdb->query($query);
		$msg="Pricing deleted successfully";
		echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>'.$msg.'</div>';
		exit;
	}

	function CreateIT()
	{
		if($_POST['id']):
			global $wpdb;
			$did=$_POST['id'];
			$user_id = get_current_user_id();
			$query="select * from wp_cab_pricing where id=".$did;
			$result=$wpdb->get_results($query);
			$rs=$result[0];
		endif;
		?>
		<form name="frm" id="frm">
			<div class="row">
				<div class="col-sm-11 populatemessage"></div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Vehicle Descrption<span class="md">*</span></label>
						<textarea class="form-control" name="description" id="description"><?php echo $rs->description; ?></textarea>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Seats<span class="md">*</span></label>
						<input type="text" class="form-control" name="seats" id="seats" value="<?php echo $rs->seats; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Bags<span class="md">*</span></label>
						<input type="text" class="form-control" name="bags" id="bags" value="<?php echo $rs->bags; ?>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="form-group">
						<label>Wheel chair<span class="md">*</span></label>
						<?php
						if($rs->wchair=="y"): $wchk='checked="checked"';else: $wchk=''; endif;
						?>
						<input type="checkbox" name="wchair" id="wchair" value="y" <?php echo $wchk;?>>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="form-group">
						<label>Trailer<span class="md">*</span></label>
						<?php
						if($rs->trailer=="y"): $tchk='checked="checked"';else: $tchk=''; endif;
						?>
						<input type="checkbox" name="trailer" id="trailer" value="y" <?php echo $tchk;?>>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="form-group">
						<label>Booster seat<span class="md">*</span></label>
						<?php
						if($rs->booster_seat=="y"): $bchk='checked="checked"';else: $bchk=''; endif;
						?>
						<input type="checkbox" name="booster_seat" id="booster_seat" value="y" <?php echo $bchk;?>>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<div class="form-group">
						<label>Baby seat<span class="md">*</span></label>
						<?php
						if($rs->baby_seat=="y"): $bschk='checked="checked"';else: $bschk=''; endif;
						?>
						<input type="checkbox" name="baby_seat" id="baby_seat" value="y" <?php echo $bschk;?>>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="form-group">
						<label>Special offer<span class="md">*</span></label>
						<?php
						if($rs->special_offer=="y"): $sochk='checked="checked"';else: $sochk=''; endif;
						?>
						<input type="checkbox" name="special_offer" id="special_offer" value="y" <?php echo $sochk;?>>
					</div>
				</div>

				<div class="col-sm-12">
					<div class="form-group">
						<label>Available<span class="md">*</span></label>
						<?php
						if($rs->available=="y"): $avchk='checked="checked"';else: $avchk=''; endif;
						?>
						<input type="checkbox" name="available" id="available" value="y" <?php echo $avchk;?>>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label>Extra Info<span class="md">*</span></label>
						<textarea class="form-control" name="extra_info" id="extra_info"><?php echo $rs->extra_info; ?></textarea>
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