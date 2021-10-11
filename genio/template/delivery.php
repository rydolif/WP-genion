<?php
/* Template name: Доставка / Дилеры / Условия возврата */
?>

<?php
	get_header();
?>

<main>
	<section class="delivery">

		<?php get_template_part( 'parts/page-title' ); ?>

		<div class="delivery__container container">
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<?php the_content(); ?>
			<?php endwhile; ?>
			<?php endif; ?>
		</div>

	</section>
</main>

<?php
	get_footer();