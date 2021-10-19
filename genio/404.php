
<?php get_header(); ?>

	<section class="error">
		<div class="container">
			<h1 class="error__h2">404</h1>
			<h2 class="error__h3">СТРАНИЦА НЕ НАЙДЕНА</h2>
			<p>Страница, которую вы ищете, не существует или была перемещена.</p>
			<a href="<?php echo get_home_url(); ?>" class="btn error__btn">Вернуться на главную страницу</a>
		</div>
	</section>

<?php get_footer(); ?>
