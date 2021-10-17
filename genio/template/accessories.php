<?php
/* Template name: Аксессуары */
?>

<?php get_header(); ?>

<main>
	<section class="accessories">
		<div class="accessories__container container">
			<h2>Выберите модель</h2>
			<div class="tabs">

				<?php if( have_rows('tabs__list') ): ?>
					<ul class="tabs__list">
					<?php while( have_rows('tabs__list') ): the_row(); 
						$title = get_sub_field('title');
						$product = get_sub_field('product');
						$ID = '';

						if(!empty($product->ID )){
							$ID = $product->ID;
							$url = get_permalink($product->ID);
							$stock_status =  get_post_meta($product->ID,'_stock_status',true);
						}

						$product = wc_get_product( $product );
						$img = $product->get_image();
					?>
						<li class="tabs__item">
							<?php echo $img; ?>
							<?php echo $title; ?>
						</li>
					<?php endwhile; ?>
					</ul>
				<?php endif; ?>

				<div>
					<?php if( have_rows('tabs__list') ): ?>
						<?php while( have_rows('tabs__list') ): the_row(); ?>
						
						<div class="tabs__wrap">
							<h2>Аксессуары для <?php echo $title; ?></h2>

							<?php if( have_rows('list') ): ?>
								<div class="tabs__hero">
								<?php while( have_rows('list') ): the_row(); 
									$id = get_sub_field('id');
									$ID = '';
			
									if(!empty($id->ID )){
										$ID = $id->ID;
										$url = get_permalink($id->ID);
										$stock_status =  get_post_meta($id->ID,'_stock_status',true);
									}

									$product = wc_get_product( $id );
									$price = $product->get_price_html();
									$title = $product->get_title();
									$img = $product->get_image();

								?>

									<div class="tabs__elem">
										<div class="tabs__img">
											<a href="<?php echo $url; ?>"><?php echo $img; ?></a>
										</div>
										<h4><a href="<?php echo $url; ?>"><?php echo $title; ?></a></h4>
										<form  id="production_<?php echo $ID; ?>" action="" method="post" enctype="multipart/form-data">
											<input type="hidden" name="quantity" value="1">
											<input type="hidden" name="add-to-cart" value="<?php echo $ID; ?>">
											
											<button data-product_id="<?php echo $ID; ?>" class="tabs__price ajax_add_to_cart add_to_cart_button product_type_simple single_add_to_cart_button">
												<?php echo $price ?>
												<svg fill="#000" height="414pt" viewBox="0 -11 414.00226 414" width="414pt" xmlns="http://www.w3.org/2000/svg">
													<path fill="#000" d="m202.480469 352.132812c0-21.800781-17.671875-39.472656-39.46875-39.472656-21.800781 0-39.472657 17.671875-39.472657 39.46875 0 21.800782 17.671876 39.472656 39.472657 39.472656 21.785156-.023437 39.445312-17.679687 39.46875-39.46875zm-64.941407 0c0-14.070312 11.402344-25.472656 25.472657-25.472656 14.066406 0 25.46875 11.402344 25.46875 25.46875 0 14.070313-11.402344 25.472656-25.46875 25.472656-14.0625-.015624-25.457031-11.410156-25.472657-25.46875zm0 0"/><path d="m309.167969 391.601562c21.800781.003907 39.472656-17.667968 39.472656-39.46875.003906-21.800781-17.667969-39.472656-39.46875-39.472656s-39.472656 17.671875-39.472656 39.472656c.027343 21.785157 17.679687 39.441407 39.46875 39.46875zm0-64.941406c14.066406 0 25.472656 11.402344 25.472656 25.46875.003906 14.066406-11.402344 25.472656-25.46875 25.472656s-25.472656-11.402343-25.472656-25.46875c.015625-14.058593 11.410156-25.453124 25.46875-25.472656zm0 0"/><path d="m7 14h42.699219c14.050781-.054688 26.03125 10.175781 28.171875 24.066406l33.800781 213.511719c3.191406 20.703125 21.050781 35.957031 42 35.875h208.929687c3.863282 0 7-3.136719 7-7 0-3.867187-3.136718-7-7-7h-208.929687c-14.050781.054687-26.03125-10.179687-28.171875-24.066406l-5.746094-36.300781h213.980469c18.117187-.007813 34.242187-11.484376 40.179687-28.597657l39.699219-114.578125c.746094-2.140625.40625-4.507812-.90625-6.355468-1.316406-1.84375-3.441406-2.941407-5.707031-2.941407h-311.386719l-3.914062-24.738281c-3.191407-20.703125-21.050781-35.9570312-42-35.875h-42.699219c-3.867188 0-7 3.136719-7 7 0 3.867188 3.132812 7 7 7zm390.164062 60.617188-36.476562 105.285156c-3.984375 11.480468-14.800781 19.179687-26.953125 19.183594h-216.199219l-19.707031-124.472657zm0 0"/>
												</svg>
											</button>
										</form>
									</div>
								
								<?php endwhile; ?>
								</div>
							<?php endif; ?>
						</div>
						<?php endwhile; ?>
					<?php endif; ?>

				</div>
			</div>
		</div>
	</section>
</main>

<?php get_footer(); ?>