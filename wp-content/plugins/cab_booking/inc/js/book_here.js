$(document).ready(function(){
	$( ".datepicker" ).datepicker();
	// Toolbar extra buttons
    var btnFinish = $('<button></button>').text('Finish').addClass('btn btn-info btn-finish').on('click', function(){ Book.FinishedClk(); });

    // Smart Wizard
    $('#smartwizard').smartWizard({
		selected: 0,
		theme: 'arrows',
		transitionEffect:'fade',
		cycleSteps: false,
		toolbarSettings: {
			toolbarPosition: 'both',
			toolbarButtonPosition: 'end',
			toolbarExtraButtons: [btnFinish],
			showPreviousButton:false
		},
		anchorSettings: {
			anchorClickable: false,
		}
    });

	$(".btn-finish").hide();
	Book.StepsValidate();
    // Step show event
    $("#smartwizard").on("showStep", function(e, anchorObject, stepNumber, stepDirection, stepPosition) {
		Book.NextProcess(e, anchorObject, stepNumber, stepDirection, stepPosition);
    });

	$("#smartwizard").on("leaveStep", function(e, anchorObject, stepNumber, stepDirection) {
		var error='<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>';
		var error_close='</div>';
		stepNumber = parseInt(stepNumber) +1;
        if(stepNumber == "1") {
			var obj = Book.FormData('frm_step1');
console.log(obj);
			if(Book.ValidateBooking(obj, error, error_close)) {
				return false;
			}
			$('.step1detail').html('<i class="fa fa-spinner fa-spin" style="font-size:24px"></i>');

			var base_url = $('#base_url_pop').val();
			var ka = $('#ka').val();

			var url = base_url+'/book_here';
			$.ajax({
				url:url,
				type:'POST',
				data: {
					signstep:1,
					ajaxcall:1,
					frmdata:obj,
					ka:ka
				},
				success: function(result) {
console.log('success');
					var data = $.parseJSON(result);
console.log(data);
					Book.SetBookingData(data);
					$('#csp').val(data.dataenc);
					$('#booking-id').val(data.data.book_id);
					return true;
				}
			});
			console.log('stepl success');
			return true;
		}
       // return true;
    });

	$(document).on('click', ".way", function (){
		var way = $("input[name='way']:checked").val();
		if(way=="2") {
			$('.returndateSelect').show('slow');
		} else {
			$('.returndateSelect').hide('slow');
		}
	});

	$(document).on('click', '.get-quote', function(e) {
		var vehicleId = $(this).data('vehicle-id');
		var obj = {};
		obj.vehicleId = vehicleId;
		obj.bookingId = $('#booking-id').val();

		var base_url = $('#base_url_pop').val();
		var ka = $('#ka').val();
		var url = base_url+'/book_here';
console.log('in get quote');

		$.ajax({
			url:url,
			type:'POST',
			data: {
				signstep:2,
				ajaxcall:1,
				frmdata:obj,
				ka:ka
			},
			success: function(result) {
				var data = $.parseJSON(result);
console.log(data);
				$("#smartwizard").smartWizard("next");
				return true;
			}
		});
		return false;
	});

	$(document).on('click', '.get-user', function(e) {
		var error='<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>';
		var error_close='</div>';
		var obj = Book.FormData('frm_step3');
		if(Book.ValidateUser(obj, error, error_close)) {
			return false;
		}
		obj.bookingId = $('#booking-id').val();
		
		var base_url = $('#base_url_pop').val();
		var ka = $('#ka').val();
		var url = base_url+'/book_here';
console.log('sendRequest');
		$.ajax({
			url:url,
			type:'POST',
			data: {
				signstep:3,
				ajaxcall:1,
				frmdata:obj,
				ka:ka
			},
			success: function(result) {
console.log(result);
				var data = $.parseJSON(result);
console.log(data);
				$('#user-id').val(data.data.user_id);
				$("#smartwizard").smartWizard("next");
				return true;
			}
		});
		return false;
	});

});

Book = {
	bookingData: [],
	FinishedClk: function() {
	},
	FormData: function(frmid) {
		var frmdata=$('form#'+frmid).serializeArray();
		obj = {};
		$(frmdata).each(function(i, field){
			obj[field.name] = field.value;
		});
		return obj;
	},
	StepsValidate: function(stepNumber) {
		var csp = $('#csp').val();
		var currentURL = window.location.href;
		var curl = currentURL.split('#step-');
		var currenturl = curl[0];

		if((csp=="") && (curl[1]>1)) {
			currenturl=currenturl+"#step-1";
			window.location.replace(currenturl);
		}



	},
	NextProcess: function(e, anchorObject, stepNumber, stepDirection, stepPosition) {
console.log('NextProcess');
console.log(anchorObject);
console.log(stepNumber);
console.log(stepDirection);
console.log(stepPosition);

		$(".btn-finish").hide();
		if(stepPosition === 'first') {
		   $(".btn-finish").hide();
		   $('.sw-btn-next').show();
		} else if(stepPosition === 'middle') {
		   $(".btn-finish").hide();
		   $('.sw-btn-next').hide();
		} else if(stepPosition === 'third') {
		   $(".btn-finish").hide();
		   $('.sw-btn-next').show();
		} else if(stepPosition === 'final') {
		   $('.sw-btn-next').hide();
		   $(".btn-finish").show();
		} else {
		   $(".btn-finish").hide();
		   $('.sw-btn-next').show();
		}
	},
	SetBookingData: function(data) {
console.log(data);
		var data = data.data;
		$('.book-from').html(data.from);
		$('.book-to').html(data.to);
		$('.one-way-date').html(data.pickup_date);
		//$('.distance').html( );
		$('.passengers').html(data.passengers);
		$('.baby_seat').html(data.baby_seat);
		$('.return').html(data.return);
		$('.booster_seat').html(data.booster_seat);
		$('.luggage').html(data.luggage);
		$('.wheelchair').html(data.wheel_chair);
		$('.meet_greet').html(data.meet_greet);
	},
	GetBookingData: function() {
		console.log(this.bookingData);
		console.log(this.bookingData.from);
	},
	ValidateUser:  function(obj, error, error_close) {
		var errorStatus = false;
		if(obj.firstname=="") {
			$('.step3error').html(error+'Please enter your from name'+error_close)
			$('#firstname').focus();
			errorStatus = true;
		}
		else if(obj.lastname=="") {
			$('.step3error').html(error+'Please enter your last name'+error_close)
			$('#lastname').focus();
			errorStatus = true;
		}
		else if(obj.mobile=="") {
			$('.step3error').html(error+'Please enter your mobile'+error_close)
			$('#mobile').focus();
			errorStatus = true;
		}
		else if(obj.email=="") {
			$('.step3error').html(error+'Please enter your email'+error_close)
			$('#email').focus();
			errorStatus = true;
		}
		return errorStatus;
	},
	ValidateBooking:  function(obj, error, error_close) {
		var errorStatus = false;
		if(obj.from=="") {
			$('.step1error').html(error+'Please enter your from address'+error_close)
			$('#from').focus();
			errorStatus = true;
		}
		else if(obj.to=="") {
			$('.step1error').html(error+'Please enter your to address'+error_close)
			$('#to').focus();
			errorStatus = true;
		}
		else if(obj.pickup_date=="") {
			$('.step1error').html(error+'Please enter your pickup date'+error_close)
			$('#pickup_date').focus();
			errorStatus = true;
		}
		else if(obj.pickup_date_hours=="0") {
			$('.step1error').html(error+'Please enter your pickup date hours'+error_close)
			$('#pickup_date_hours').focus();
			errorStatus = true;
		}
		else if(obj.pickup_date_mins=="0") {
			$('.step1error').html(error+'Please enter your pickup date mins'+error_close)
			$('#pickup_date_mins').focus();
			errorStatus = true;
		}
		else if((obj.way=="2")&&(obj.return_date=="")) {
			$('.step1error').html(error+'Please enter your return date'+error_close)
			$('#return_date').focus();
			errorStatus = true;
		}
		else if((obj.way=="2")&&(obj.return_date_hours=="0")) {
			$('.step1error').html(error+'Please enter your pickup return date hours'+error_close)
			$('#return_date_hours').focus();
			errorStatus = true;
		}
		else if((obj.way=="2")&&(obj.return_date_mins=="0")) {
			$('.step1error').html(error+'Please enter your return date mins'+error_close)
			$('#return_date_mins').focus();
			errorStatus = true;
		}
		return errorStatus;
	}
};
