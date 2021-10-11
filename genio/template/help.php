<?php
/* Template name: Поддержка */
?>

<?php
	get_header();
?>

<main>
	<section class="help">

		<?php get_template_part( 'parts/page-title' ); ?>

		<div class="help__container container">
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<?php the_content(); ?>
			<?php endwhile; ?>
			<?php endif; ?>
		</div>

	</section>
</main>

<?php
	get_footer();