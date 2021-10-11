<?php
/* Template name: Info page */
?>

<?php
	get_header();
?>

	<main class="main content">
		<div class="container">

			<h2 class="h2"><?php the_title(); ?></h2>
			<br>

			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
				<?php the_content(); ?>
			<?php endwhile; ?>
			<?php endif; ?>

		</div>
	</main>

<?php
	get_footer();
