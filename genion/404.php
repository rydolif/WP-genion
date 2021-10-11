
<?php get_header(); ?>

	<section class="error404 hero">
		<div class="container">

			<div class="error404__description">
				<h1 class="error404__title h1"><?php esc_html_e( 'STRONA NIE ZNALEZIONA "404"', 'schoolstudy' ); ?></h1>
				<div class="error404__btn">
					<a href="<?php echo get_home_url(); ?>" class="btn">Główna</a>
				</div>
			</div>

		</div>
	</section>

<?php get_footer(); ?>
