
<header class="header">
	<div class="header__container container">

		<a href="<?php echo get_home_url(); ?>" class="header__logo">
			<b>GENIO</b>
			<span>Фирменный магазин</span>
		</a>

		<nav class="header__nav">
			<?php 
				wp_nav_menu( array(
					'menu'=>'header_menu',
					'menu_class'=>'list',
					'theme_location'=>'menu',
				) );
			?>
		</nav>

		<div class="header__info">
			<a href="tel:<?php the_field('tel_url', 'option'); ?>" class="header__tell">
				<?php the_field('tel', 'option'); ?>
			</a>

			<div class="header__basket">
				<?php cart_link(); ?><?php the_widget('WC_Widget_Cart', 'title='); ?>
			</div>

			<button class="hamburger hamburger--page" type="button">
				<span class="hamburger__item "></span>
			</button>

		</div>
	</div>
</header>