
<footer class="footer">
	<div class="footer__container container">
		<div class="footer__list">
			<h4>МОДЕЛИ</h4>
			<?php 
				wp_nav_menu( array(
					'menu'=>'footer_model',
					'menu_class'=>'list',
					'theme_location'=>'menu',
				) );
			?>
		</div>

		<div class="footer__list">
			<h4>РАЗДЕЛЫ</h4>
			<?php 
				wp_nav_menu( array(
					'menu'=>'footer_section',
					'menu_class'=>'list',
					'theme_location'=>'menu',
				) );
			?>
		</div>

		<div class="footer__list">
			<h4>КОМПАНИЯ</h4>
			<?php 
				wp_nav_menu( array(
					'menu'=>'footer_company',
					'menu_class'=>'list',
					'theme_location'=>'menu',
				) );
			?>
		</div>

		<div class="footer__block">
			<a href="<?php echo get_home_url(); ?>" class="header__logo">
				<b>GENIO</b>
				<span>Фирменный магазин</span>
			</a>
			<div class="footer__img">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/footer__logo.png" alt="">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/footer__logo1.png" alt="">
			</div>
		</div>

	</div>
	<div class="footer__copy container">
		<p>© 2021 <a href="<?php echo get_home_url(); ?>">Genio</a>. Все права защищены</p>
	</div>
</footer>