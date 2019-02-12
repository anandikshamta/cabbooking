$(document).ready( function () {

	$('.dataTable').DataTable();
	//$( ".dataTables_filter" ).prepend('<div class="col-sm-4"><a href="javascript:;" id="add_bookings" class="btn btn-sm btn-success">Add bookings</a></div>');

    $(document).on('click', "#add_bookings", function (){
		VCL.CreateProcess();
    });
	$(document).on('click', ".process_data", function (){
		var frmdata=$('form#frm').serializeArray();
		obj = {};
		$(frmdata).each(function(i, field){
			obj[field.name] = field.value;
		});
		VCL.Validate(obj);
	});
	$(document).on('click', ".editit", function (){
		var id=$(this).data("id");
		VCL.EditProcess(id);

	});
	$(document).on('click', ".deleteit", function (){
		var id=$(this).data("id");
		VCL.DeleteProcess(id);
	});
	$(document).on('click', ".uploadphoto", function (){
		$('#driver_photo').trigger('click');
	});


});

VCL={
	CreateProcess:function()
	{
		$('#popupbox').modal();
		$('.modal-title').html('Add bookings');
		$('.modal-body').html('<div class="loading-icon text-center"><i class="fa fa-spinner fa-spin loader" ></i></div>');
		$('.modal-dialog').css({"width":"70%"});

		var base_url=$('#base_url').val();
		var url = base_url+'/cabbooking/?action=bookings';
		$.ajax({
			url:url,
			type:'POST',
			data: {
				operation:'create'
			},
			success: function(result) {
				$('.modal-body').html(result);
				$( ".datepicker" ).datepicker();
			}
		});
	},
	EditProcess:function(id)
	{
		$('#popupbox').modal();
		$('.modal-title').html('Edit bookings');
		$('.modal-body').html('<div class="loading-icon text-center"><i class="fa fa-spinner fa-spin loader" ></i></div>');
		$('.modal-dialog').css({"width":"70%"});

		var base_url=$('#base_url').val();
		var url = base_url+'/cabbooking/?action=bookings';
		$.ajax({
			url:url,
			type:'POST',
			data: {
				operation:'create',
				id:id
			},
			success: function(result) {
				$('.modal-body').html(result);
				$( ".datepicker" ).datepicker();
			}
		});
	},
	DeleteProcess:function(id)
	{
		if(confirm("Are you sure you want to delete?"))
		{
			$('.alert').remove();
			var base_url=$('#base_url').val();
			var url = base_url+'/cabbooking/?action=bookings';
			$.ajax({
				url:url,
				type:'POST',
				data: {
					operation:'delete',
					id:id
				},
				success: function(result) {
					$('.msgdisplay').html(result);
				}
			});
		}
	},
	Validate:function(obj)
	{
		var popup_error='<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>';
		var popup_error_close='</div>';
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		/*if(obj.driver_name=="")
		{
			$('.populatemessage').html(popup_error+'Please enter your driver name'+popup_error_close);
			$(driver_name).focus();
		}
		else if(obj.pass=="")
		{
			$('.populatemessage').html(popup_error+'Please enter your driver password'+popup_error_close);
			$('#pass').focus();
		}
		else if(obj.vehicle=="")
		{
			$('.populatemessage').html(popup_error+'Please select your vehicle'+popup_error_close);
			$('#vehicle').focus();
		}
		else if(obj.email=="")
		{
			$('.populatemessage').html(popup_error+'Please enter your email'+popup_error_close);
			$('#email').focus();
		}
		else if (!filter.test(obj.email))
		{
			$('.populatemessage').html(popup_error+'Please enter your valid email id'+popup_error_close)
			$('#email').focus();
		}
		else if(obj.phone=="")
		{
			$('.populatemessage').html(popup_error+'Please enter your phone'+popup_error_close);
			$('#phone').focus();
		}
		else
		{*/
			document.frm.action="";
			document.frm.method="POST";
			document.frm.submit();
		//}
	}
};