<?php
/* Template name: Project page */
?>

<?php
	get_header();
?>

<main class="main">

	<section class="news">
		<div class="container">

			<h2 class="news__title h2">Nasze Realizacje</h2>

			<div id="photo-gallery">
				<div class="row news__grid">
					<?php
					if( have_rows('list') ): 
						$total = count(get_field('list'));
						$count = 0;
						$number = 2;
						while ( have_rows('list') ) : the_row(); ?>

							<div class="news__grid_item">
								<a href="<?php the_sub_field('img'); ?>" class="news__grid_img" data-fancybox="gallery">
									<img src="<?php the_sub_field('img'); ?>" alt="">
								</a>
								<p class="news__grid_subtitle"><?php the_sub_field('title'); ?></p>
								<p class="news__grid_desc">
									<?php the_sub_field('text'); ?>
								</p>
								<?php if( have_rows('file') ): ?>
									<?php while( have_rows('file') ): the_row(); 
										$file_item = get_sub_field('file_item');
										?>
										<a href="<?php echo $file_item; ?>" data-fancybox="gallery" class="news__grid_item--gallery"></a>
									<?php endwhile; ?>
								<?php endif; ?>
							</div>

							<?php
							if ($count == $number) {
								// we've shown the number, break out of loop
								break;
							} ?>
						<?php $count++; endwhile;
					else : endif;
					?>
				</div>
				<div class="news__pagination">
					<a id="gallery-load-more" class="btn page--work__more" href="javascript: my_repeater_show();" <?php if ($total < $count) { ?> style="display: none;"<?php } ?>>
						Pobierz więcej
					</a>
				</div>

			</div>
		</div>
	</section>

</main>


<script type="text/javascript">
		var my_repeater_field_post_id = <?php echo $post->ID; ?>;
		var my_repeater_field_offset = <?php echo $number + 1; ?>;
		var my_repeater_field_nonce = '<?php echo wp_create_nonce('my_repeater_field'); ?>';
		var my_repeater_ajax_url = '<?php echo admin_url('admin-ajax.php'); ?>';
		var my_repeater = true;
		
		function my_repeater_show() {
			// make ajax request
			jQuery.post(
				my_repeater_ajax_url, {
					// this is the AJAX action we set up in PHP
					'action': 'my_repeater_show',
					'post_id': my_repeater_field_post_id,
					'offset': my_repeater_field_offset,
					'nonce': my_repeater_field_nonce
				},
				function (json) {
					// add content to container
					// this ID must match the containter 
					// you want to append content to
					jQuery('#photo-gallery .row').append(json['content']);
					// update offset
					my_repeater_field_offset = json['offset'];
					// see if there is more, if not then hide the more link
					if (!json['more']) {
						// this ID must match the id of the show more link
						jQuery('#gallery-load-more').css('display', 'none');
					}
					upgradeFunction();
				},
				'json'
			);
		}

		
	//------------------------------NEWS ITEM---------------------------
		function upgradeFunction() {
				const gridItem = (gridItemSelector) => {
					const	gridItemGallery = document.querySelectorAll(gridItemSelector);
					let i = 1;

					gridItemGallery.forEach(item => {
						const gridItemData = item.querySelectorAll('a');
						let block = 'gallery' + i++;
						gridItemData.forEach(elem => {
							elem.setAttribute('data-fancybox', block);
						});

					});

				};
				gridItem('.news__grid_item');
			}

			upgradeFunction();


</script>


<?php
	get_footer();
