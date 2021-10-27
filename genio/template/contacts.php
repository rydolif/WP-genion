<?php
/* Template name: Контакты / Сотрудничество */
?>

<?php
	get_header();
?>

<main>
	<section class="contacts">

		<?php get_template_part( 'parts/page-title' ); ?>

		<div class="container">

			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<img src="<?php the_post_thumbnail_url(); ?>" alt="" class="contacts__banner">
				<div class="contacts__content">
					<?php the_content(); ?>
				</div>
			<?php endwhile; ?>
			<?php endif; ?>

			<div class="contacts__block">
				<div class="contacts__info">
					<div class="contacts__item">
						<div class="contacts__img">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/free-icon-time-25692.png" alt="">
						</div>
						<div class="contacts__text">
							<h3>Время работы:</h3>
							<p><?php the_field('time'); ?></p>
						</div>
					</div>
					<div class="contacts__item">
						<div class="contacts__img">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/free-icon-home-25694.png" alt="">
						</div>
						<div class="contacts__text">
							<h3>Адрес:</h3>
							<p><?php the_field('address'); ?></p>
						</div>
					</div>
					<div class="contacts__item">
						<div class="contacts__img">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/contact-phone.png" alt="">
						</div>
						<div class="contacts__text">
							<h3>Телефон:</h3>
							<a href="tel:<?php the_field('tel_url'); ?>"><?php the_field('tel'); ?></a>
						</div>
					</div>
					<div class="contacts__item">
						<div class="contacts__img">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/free-icon-mail.png" alt="">
						</div>
						<div class="contacts__text">
							<h3>Email:</h3>
							<a href="mailto:<?php the_field('email'); ?>"><?php the_field('email'); ?></a>
						</div>
					</div>
				</div>

				<div class="contacts__form">
					<?php the_field('form'); ?>
				</div>
			</div>

			<div class="contacts__map">
				<?php the_field('map'); ?>
			</div>
		</div>

	</section>
</main>

<?php
	get_footer();
