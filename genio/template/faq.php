<?php
/* Template name: Faq page */
?>

<?php
	get_header();
?>

<main class="main">

	<section class="faq">
		<div class="container">

			<h2 class="faq__title h2">Faq</h2>

			<?php if( have_rows('faq') ): ?>
				<div class="faq__accordion">
					<?php while( have_rows('faq') ): the_row();
						$question = get_sub_field('question');
						$answer = get_sub_field('answer');
						?>

						<div class="accordion">
							<div class="accordion__header">
								<p><?php echo $question; ?></p>
								<span></span>
							</div>
							<div class="accordion__content">
								<p>
									<?php echo $answer; ?>
								</p>
							</div>
						</div>
					<?php endwhile; ?>
				</div>
			<?php endif; ?>

		</div>
	</section>

</main>

<?php
	get_footer();
