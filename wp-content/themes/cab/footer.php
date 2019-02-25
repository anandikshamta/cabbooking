
  <!-- Start Footer bottom Area -->
  <footer>
	<input type="hidden" id="base_url" value="<?php bloginfo('url')?>">
    <div class="footer-area-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-center">
              <p>
                &copy; Copyright <strong>Cab booking</strong>. All Rights Reserved
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <script src="<?php echo plugins_url();?>/cab_booking/inc/js/bootstrap.min.js"></script>
  <script src="<?php echo plugins_url();?>/cab_booking/inc/js/popper.min.js"></script>
<?php
	if(is_front_page()):
?>
  <!-- JavaScript Libraries -->


  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/venobox/venobox.min.js"></script>

  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/knob/jquery.knob.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/wow/wow.min.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/parallax/parallax.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/easing/easing.min.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/appear/jquery.appear.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/isotope/isotope.pkgd.min.js"></script>
  <!-- Uncomment below if you want to use dynamic Google Maps -->
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script> -->



  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/js/main.js"></script>

	<?php
	endif;
	?>
	<script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/js/jquery.tabledit.js"></script>
  <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/inc/js/jsgrid.js"></script>
	<?php
	wp_footer(); ?>

</body>


</html>







