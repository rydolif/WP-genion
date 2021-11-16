<?php
/* Template name: Главная */
?>

<?php get_header(); ?>


<main>
	<section class="genio">
		<div class="genio__container">

		<?php 
			if(have_rows('block')){
		?>
			<div class="genio__grid">
			<?php 
				while ( have_rows('block') ) : the_row();
					$width = get_sub_field('width');
					$title = get_sub_field('title');
					$desc = get_sub_field('desc');
					$img = get_sub_field('img');
					$url = get_sub_field('url');
					$bg = get_sub_field('bg');
					$color = get_sub_field('color');
					$ico = get_sub_field('ico');
					$price = get_sub_field('price');
					$product = get_sub_field('product');
					$ID = '';
					$stock_status = '';

					if(!empty($product->ID )){
						$ID = $product->ID;
						$url = get_permalink($product->ID);
						$stock_status =  get_post_meta($product->ID,'_stock_status',true);
					}

					if($width == 100){
						$width = 'genio__item--full';
					}else {
						$width = ' ';
					}
			?>

				<div class="genio__item <?php echo $width; ?>" style="background: <?php echo $bg; ?>;">
					<a href="<?php echo $url; ?>" class=""><h2 class="genio__title h2" style="color: <?php echo $color; ?>;"><?php echo $title; ?></h2></a>
					<a href="<?php echo $url; ?>"><p class="genio__subtitle h3" style="color: <?php echo $color; ?>;"><?php echo $desc; ?></p></a>
					<a href="<?php echo $url; ?>"><img src="<?php echo $img; ?>" alt=""></a>
					<?php
						if($ico){
					?>

						<form  id="production_<?php echo $ID; ?>" action="" method="post" enctype="multipart/form-data">
							<input type="hidden" name="quantity" value="1">
							<input type="hidden" name="add-to-cart" value="<?php echo $ID; ?>">
							<button data-product_id="<?php echo $ID; ?>" class="genio__price ajax_add_to_cart add_to_cart_button product_type_simple single_add_to_cart_button" style="color: <?php echo $color; ?>;">
								<?php echo $price; ?> ₽
								<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" height="32" viewBox="0 0 32 32">
									<g id="icomoon-ignore">
									</g>
									<path d="M30.622 9.602h-22.407l-1.809-7.464h-5.027v1.066h4.188l5.198 21.443c-1.108 0.323-1.923 1.334-1.923 2.547 0 1.472 1.193 2.666 2.666 2.666s2.666-1.194 2.666-2.666c0-0.603-0.208-1.153-0.545-1.599h7.487c-0.337 0.446-0.545 0.997-0.545 1.599 0 1.472 1.193 2.666 2.665 2.666s2.666-1.194 2.666-2.666c0-1.473-1.193-2.665-2.666-2.666v0h-11.403l-0.517-2.133h14.968l4.337-12.795zM13.107 27.196c0 0.882-0.717 1.599-1.599 1.599s-1.599-0.717-1.599-1.599c0-0.882 0.717-1.599 1.599-1.599s1.599 0.718 1.599 1.599zM24.836 27.196c0 0.882-0.718 1.599-1.6 1.599s-1.599-0.717-1.599-1.599c0-0.882 0.717-1.599 1.599-1.599 0.882 0 1.6 0.718 1.6 1.599zM11.058 21.331l-2.585-10.662h20.662l-3.615 10.662h-14.462z" fill="#000000"></path>
								</svg>
							</button>
						</form>

					<?php
						}
					?>
				</div>

			<?php 
				endwhile;
			?>
		</div>
		<?php 
			}
		?>

		</div>
	</section>
</main>

<?php get_footer(); ?>