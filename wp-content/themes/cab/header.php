<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage cab
 * @since cab
 */
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cab Booking</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/img/favicon.png" rel="icon">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <?php if(is_front_page()):?>
  <!-- Libraries CSS Files -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/owlcarousel/owl.carousel.css" rel="stylesheet">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/owlcarousel/owl.transitions.css" rel="stylesheet">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/animate/animate.min.css" rel="stylesheet">
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/venobox/venobox.css" rel="stylesheet">

  <!-- Nivo Slider Theme -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/css/nivo-slider-theme.css" rel="stylesheet">
  <?php endif;?>

  <!-- Main Stylesheet File -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/css/style.css" rel="stylesheet">

  <!-- Responsive Stylesheet File -->
  <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/css/responsive.css" rel="stylesheet">

  <link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/css/jsgrid.min.css" >
  <link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/css/jsgrid-theme.min.css" >

  <?php wp_head(); ?>
  <script>var $=jQuery;</script>
</head>

<body data-spy="scroll" data-target="#navbar-example">


		<div id="loadstick" class="row">
			<div class="col-lg-2 text-left">&nbsp;</div>
			<div class="col-lg-4 text-left">
				<?php
					if ( is_user_logged_in() ): $redirect=get_bloginfo('url')."/cabbooking/?action=bookings"; else:  $redirect=""; endif;
				?>
				<a class="sticky-logo" href="<?php echo $redirect;?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/img/logo.png" alt="" title=""></a>
			</div>
			<div class="col-lg-6 text-right ">
				<div class="row">
					<div class="col-md-12 col-sm-12 language_header">
				<?php
					if ( is_user_logged_in() ):
						$current_user = wp_get_current_user();
						echo ' Welcome :'.$current_user->display_name.' | <a href="'.wp_logout_url( get_permalink() ).'">Logout</a>';
					else:
						$redirect=get_bloginfo('url')."/cabbooking/?action=bookings";
						$args = array(
							'redirect' => $redirect,
							'form_id' => 'loginform-dash',
							'label_username' => __( 'Email' ),
							'label_password' => __( 'Password' ),
							'label_log_in' => __( 'Sign in' ),
							'remember' => false
						);
						wp_login_form($args);
					endif;
					echo '</div></div>';
					echo '<div class="row"><div class="col-md-12 col-sm-12 language_header">'.do_shortcode('[gtranslate]').'</div></div>';
				?>
			</div>
		</div>
<?php
	if (! is_user_logged_in() ):
?>
  <header>
    <!-- header-area start -->
    <div id="sticker" class="header-area" >
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12">

            <!-- Navigation -->
            <nav class="navbar navbar-default">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
                <!-- Brand -->

              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1" id="navbar-example">
                <?php

					wp_nav_menu( array( 'container_class' => false, 'theme_location' => 'my-custom-menu' , 'menu' => 'topmenu' , 'menu_class' => 'nav navbar-nav navbar-right','container' => 'ul') );
				?>

              </div>
              <!-- navbar-collapse -->
            </nav>
            <!-- END: Navigation -->
          </div>
        </div>
      </div>
    </div>
    <!-- header-area end -->
  </header>
  <!-- header end -->
<?php endif;?>

