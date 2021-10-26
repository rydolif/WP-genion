
<?php get_header(); ?>
<main>
	<section class="company">
		<div class="container">
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<?php the_content(); ?>
			<?php endwhile; ?>
			<?php endif; ?>

		</div>
	</section>
</main>

<?php get_footer(); ?>