
<?php get_header('tovar'); ?>

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

<main>

	<section class="headerpage">
		<div class="headerpage__container container">
			<h3><?php the_title(); ?></h3>
			<div class="headerpage__menu">

				<ul class="headerpage__list">
					<li class="headerpage__item">Описание</li>
					<li class="headerpage__item">Характеристики</li>
					<li class="headerpage__item">Комплектация</li>
				</ul>

				<div class="headerpage__buy">
					<button class="btn btn--page ajax_add_to_cart add_to_cart_button single_add_to_cart_button" data-product_id="<?php the_ID(); ?>">Купить</button>

					<div class="header__basket basket header__basket_none">
						<?php cart_link(); ?><?php the_widget('WC_Widget_Cart', 'title='); ?>
					</div>

				</div>
			</div>
		</div>
	</section>

	<div class="headerpage__wrap">

		<section class="bannerpage bg-cover" style="background: url(<?php the_field('header_bg'); ?>); background-color: <?php the_field('header_bg_color'); ?>">
			<div class="bannerpage__container container">
				<div class="bannerpage__title">
					<h1 class="h1"><?php the_field('header_title'); ?></h1>
					<p><?php the_field('header_desc'); ?></p>
				</div>
				<div class="bannerpage__subtitle">
					<h4>
						<?php 
							$product = wc_get_product( $id );
							$price = $product->get_price_html();
							echo $price
						?>
					</h4>
					<p>
						<svg style="width:16px;" aria-hidden="true" data-prefix="fal" data-icon="check-circle" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-check-circle fa-w-16 fa-2x"><path fill="currentColor" d="M256 8C119.033 8 8 119.033 8 256s111.033 248 248 248 248-111.033 248-248S392.967 8 256 8zm0 464c-118.664 0-216-96.055-216-216 0-118.663 96.055-216 216-216 118.664 0 216 96.055 216 216 0 118.663-96.055 216-216 216zm141.63-274.961L217.15 376.071c-4.705 4.667-12.303 4.637-16.97-.068l-85.878-86.572c-4.667-4.705-4.637-12.303.068-16.97l8.52-8.451c4.705-4.667 12.303-4.637 16.97.068l68.976 69.533 163.441-162.13c4.705-4.667 12.303-4.637 16.97.068l8.451 8.52c4.668 4.705 4.637 12.303-.068 16.97z" class=""></path>
						</svg>
						В наличии
					</p>
					<div class="bannerpage__buy">
						<button class="btn btn--page_buy ajax_add_to_cart add_to_cart_button single_add_to_cart_button" data-product_id="<?php the_ID(); ?>">Купить</button>
						<?php echo do_shortcode( "[viewBuyButton id='$id']" ); ?>
					</div>
	
				</div>
			</div>
		</section>

		<?php if( have_rows('characteristics_stick') ): ?>
			<section class="aboutm bg-right" style="background-image: url(<?php the_field('bg_stick'); ?>);">
				<div class="aboutm__container container">
					<h2>ОСНОВНЫЕ <br>ХАРАКТЕРИСТИКИ</h2>

					<div class="aboutm__list">
					<?php while( have_rows('characteristics_stick') ): the_row();
						$img = get_sub_field('img');
						$title = get_sub_field('title');
						$text = get_sub_field('text');
					?>
						<div class="aboutm__item">
							<div class="aboutm__img">
								<img src="<?php echo $img; ?>" alt="">
							</div>
							<div class="aboutm__text">
								<h4><?php echo $title; ?></h4>
								<p><?php echo $text; ?></p>
							</div>
						</div>
						<?php endwhile; ?>
					</div>
				</div>
			</section>
		<?php endif; ?>

		<?php if( have_rows('info_block') ): ?>
			<?php while( have_rows('info_block') ): the_row();
				$one = get_sub_field('one');
				$two = get_sub_field('two');
			?>
				<?php if($one) { ?>
					<?php if($two) { ?>
						<section class="benefitspage">
							<div class="benefitspage__container container">
								<div class="benefitspage__block">
									<div class="benefitspage__text">
										<div class="benefitspage__img">
											<img src="<?php echo get_template_directory_uri(); ?>/assets/img/l800-block.png" alt="">
										</div>
										<p><?php echo $one; ?></p>
									</div>
									<div class="benefitspage__text">
										<div class="benefitspage__img">
											<img src="<?php echo get_template_directory_uri(); ?>/assets/img/l800-block1.png" alt="">
										</div>
										<p><?php echo $two; ?></p>
									</div>
								</div>
							</div>
						</section>
					<?php } ?>
				<?php } ?>
			<?php endwhile; ?>
		<?php endif; ?>

		<?php if( have_rows('operating_modes') ): ?>
			<?php while( have_rows('operating_modes') ): the_row();
				$title = get_sub_field('title');
				$text = get_sub_field('text');
			?>
			<?php if($title) { ?>
				<?php if($text) { ?>
					<section class="workpage">
						<div class="workpage__container container">
							<h2 class="workpage__title"><?php echo $title ?></h2>
							<?php echo $text; ?>
							<?php if( have_rows('list') ): ?>
								<div class="workpage__list">
									<?php while( have_rows('list') ): the_row(); 
										$img = get_sub_field('img');
										$text = get_sub_field('text');
									?>
										<div class="workpage__item">
											<img src="<?php echo $img; ?>" alt="">
											<p><?php echo $text; ?></p>
											<b></b>
										</div>
									<?php endwhile; ?>
								</div>
							<?php endif; ?>
						</div>
					</section>
				<?php } ?>
			<?php } ?>
			<?php endwhile; ?>
		<?php endif; ?>

		<?php if( have_rows('custom') ): ?>
			<?php while( have_rows('custom') ): the_row();
				$bg = get_sub_field('bg');
				$position = get_sub_field('position');
				$color = get_sub_field('color');
				$title = get_sub_field('title');
				$content = get_sub_field('content');

				if($position == 'left'){
					$position = 'content';
					$position_block = 'content__block';
				} else {
					$position = 'content--right';
					$position_block = 'content--right__block';
				}

				if($color == 'white'){
					$color = '';
				} else {
					$color = 'text-dark';
				}
			?>
			<section class="<?php echo $position; ?>" style="background-image: url(<?php echo $bg; ?>);">
				<div class="content__container container">
					<div class="<?php echo $position_block; ?>">
						<h2><?php echo $title; ?></h2>
						<div class="<?php echo $color; ?>"><?php echo $content; ?></div>
					</div>
				</div>
			</section>
			<?php endwhile; ?>
		<?php endif; ?>

		<?php if( have_rows('perference') ): ?>
			<section class="perference">
				<div class="perference__container container">
				<?php while( have_rows('perference') ): the_row();
					$title = get_sub_field('title');
					$text = get_sub_field('text');
					$img = get_sub_field('img');
				?>
					<div class="perference__block">
						<div class="perference__text">
							<h2><?php echo $title; ?></h2>
							<?php echo $text; ?>
						</div>
						<div class="perference__img">
							<img src="<?php echo $img; ?>" alt="">
						</div>
					</div>
					<?php endwhile; ?>
				</div>
			</section>
		<?php endif; ?>

		<?php if( get_field('allrobot') ): ?>
			<section class="allrobot">
				<div class="allrobot__container container">
					<a href="<?php echo get_home_url(); ?>/vacuum-cleaners-comparison"><h2 class="h2 allrobot__title">Сравнение роботов</h2></a>
					<a href="<?php echo get_home_url(); ?>/vacuum-cleaners-comparison"><h3 class="h3 allrobot__subtitle">Найди свой идеал</h3></a>
					<a href="<?php echo get_home_url(); ?>/vacuum-cleaners-comparison"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/product.png" alt=""></a>
				</div>
			</section>
		<?php endif; ?>

		<?php if( get_field('magic_all') ): ?>
			<section class="allrobot">
				<div class="allrobot__container container">
					<a href="<?php echo get_home_url(); ?>/upright-cleaners-comparison"><h2 class="h2 allrobot__title">Сравнение пылесосов</h2></a>
					<a href="<?php echo get_home_url(); ?>/upright-cleaners-comparison"><h3 class="h3 allrobot__subtitle">Найди свой идеал</h3></a>
					<a href="<?php echo get_home_url(); ?>/upright-cleaners-comparison"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/product2.png" alt=""></a>
				</div>
			</section>
		<?php endif; ?>

		<?php if( get_field('robot_window_cleaner') ): ?>
			<section class="allrobot">
				<div class="allrobot__container container">
					<a href="<?php echo get_home_url(); ?>/window-cleaners-comparison"><h2 class="h2 allrobot__title">Сравнение роботов</h2></a>
					<a href="<?php echo get_home_url(); ?>/window-cleaners-comparison"><h3 class="h3 allrobot__subtitle">Найди свой идеал</h3></a>
					<a href="<?php echo get_home_url(); ?>/window-cleaners-comparison"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/product3.png" alt=""></a>
				</div>
			</section>
		<?php endif; ?>

	</div>

	<div class="headerpage__wrap">
		<section class="parameterspage">
		<div class="parameterspage__container container">

			<div class="parameterspage__img">
				<img src="<?php the_post_thumbnail_url(); ?>" alt="">
				<p><?php the_title(); ?></p>
			</div>

			<div class="parameterspage__line"></div>

			<div class="parameterspage__main">
				<h2 class="parameterspage__title h2">Основные<br> Характеристики</h2>
				<?php if( have_rows('characteristics') ): ?>
					<div class="parameterspage__list">
						<div class="parameterspage__list_title">
							<?php while( have_rows('characteristics') ): the_row(); 
								$title = get_sub_field('title');
								$value = get_sub_field('value');
							?>
								<div class="parameterspage__list_content">
									<h4><?php echo $title; ?></h4><p><?php echo $value; ?></p>
								</div>
							<?php endwhile; ?>
						</div>
					</div>
				<?php endif; ?>
			</div>

			<div class="parameterspage__main">
				<h2 class="parameterspage__title h2">Функции</h2>
				<?php if( have_rows('functions') ): ?>
					<div class="parameterspage__list">
						<div class="parameterspage__list_title">
							<?php while( have_rows('functions') ): the_row(); 
								$title = get_sub_field('title');
							?>
								<div class="parameterspage__list_content">
									<h4><?php echo $title; ?></h4>
									<p><img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt=""></p>
								</div>
							<?php endwhile; ?>
						</div>
					</div>
				<?php endif; ?>
			</div>

			<div class="parameterspage__main">
				<h2 class="parameterspage__title h2">
					Размеры
				</h2>
				<?php if( have_rows('sizes') ): ?>
					<div class="parameterspage__list">
						<div class="parameterspage__list_title">
							<?php while( have_rows('sizes') ): the_row(); 
								$title = get_sub_field('title');
								$value = get_sub_field('value');
							?>
								<div class="parameterspage__list_content">
									<h4><?php echo $title; ?></h4><p><?php echo $value; ?></p>
								</div>
							<?php endwhile; ?>
						</div>
					</div>
				<?php endif; ?>
			</div>

		</div>
		</section>
	</div>

	<div class="container headerpage__wrap">
		<div id="product_equipments_wrap">
			<?php
				$n = 1;
				$once = 0;
				
				if(have_rows('equipment')){
					while ( have_rows('equipment') ) : the_row();
						if($n<9){
							$title = get_sub_field('title');
							$value = get_sub_field('value');
							$image = get_sub_field('image');
							
							if ($image) {
								$check = 1; 
							}
							else {
								$check = 0;
							}
						}
					endwhile;
				}
					if ($image == 0 && $check == 0){
						if ( has_post_thumbnail()) {
						$image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full'); 
					?>
						<div id="general_hs" class="product_equipment_general" data-img="<?php echo $image_url[0]; ?>">
							<div class="product_equipment_general_image">
								<div class="product_equipment_block" style="width:500px;height:500px;position:absolute;z-index:1000;"></div>
								<div class="product_equipment_general_loop"></div>
								<div class="product_equipment_general_default">
									<img  src="<?php echo $image_url[0]; ?>" alt="" style="position:absolute; top:0px; width:100%;">
								</div>
							</div>
							<div class="product_equipment_general_title"><?php the_title(); ?></div>
							</div>
					<?php 
							}
						}
					?>

			<div id="product_equipments">
				<?php
					$n = 1;
					$once = 0;
					if(have_rows('equipment')){
						while ( have_rows('equipment') ) : the_row();

							if($n<9){
								$title = get_sub_field('title');
								$value = get_sub_field('value');
								$image = get_sub_field('image');
								if ($image) {
									$check = 1; 
								}
								else {
									$check = 0;
								}
							?>

						<?php
							if(!empty($image['url'])){
								$image = $image['url'];
							?>
								<div class="product_equipment product_equipment_<?php echo $n; ?>" data-id="<?php echo $n; ?>" data-img="<?php echo $image; ?>">
									<div class="product_equipment_image"><img src="<?php echo $image; ?>" alt=""></div>
									<div class="product_equipment_title"><?php echo $title; ?></div>
								</div>
								<?php
								$n++;
							}
							if($check == 0){
							if($once == 0) {
						?>

						<div class="complect__list">
							<div class="complect__list_title">
								<?php
									if(have_rows('equipment')){
										while ( have_rows('equipment') ) : the_row();
											$title = get_sub_field('title');
											$value = get_sub_field('value');
										?>
											<div class="complect__list_content">
												<h4><?php echo $title; ?></h4>
												<p><?php echo $value; ?></p>
											</div>
										<?php
										endwhile;
										$once = 1;
									}
								?> 
							</div>
						</div>

						<?php
							}
							}
							}
						endwhile;
					}
					?>
		
				<?php
				
				if($image == 0 && $check == 1){
					
						if ( has_post_thumbnail()) {
						$image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full');//(thumbnail, medium, large или full). ?>
						<div class="product_equipment_general" data-img="<?php 

						echo $image_url[0]; 
						?>">
						<div class="product_equipment_general_image">

						<div class="product_equipment_block"></div>
						<div class="product_equipment_general_loop"></div>
						<div class="product_equipment_general_default">
							<img  src="<?php echo $image_url[0]; ?>" alt="" style="width:100%; position: absolute; top: 0px;">
						</div>
					</div>
					<div class="product_equipment_general_title"><?php the_title(); ?></div>
				</div>
				<?php 
					}
					}
				?>

			</div>
		</div>
	</div>

</main>

<?php endwhile; ?>
<?php endif; ?>

<script type="text/javascript">
	function toTop () {
		window.scrollTo(0,0);
		return false;
	}

	jQuery(document).ready(function(){
		var product_equipment_general_status = 0;
		jQuery('.product_equipment').hover(function(){

			id = jQuery(this).data('id');
			product_equipment_image=jQuery('.product_equipment_'+id).find('.product_equipment_image');

			jQuery('.product_equipment_general_image').addClass('product_equipment_general_image_border');
			jQuery('.product_equipment_general_default').hide();
			jQuery('.product_equipment_general_loop').show();
			jQuery('.product_equipment_general_loop').html(product_equipment_image.html());

		},function(){
			jQuery('.product_equipment_general_loop img').remove();
			jQuery('.product_equipment_general_image').removeClass('product_equipment_general_image_border');
			jQuery('.product_equipment_general_default').show();
			jQuery('.product_equipment_general_loop').hide();
		});

		jQuery('.product_equipment').mousemove(function(e){
			var x = e.offsetX==undefined?e.layerX:e.offsetX;
			var y = e.offsetY==undefined?e.layerY:e.offsetY;
			x = Number('-'+x);
			y = Number('-'+y);
			x = x - (120);
			y = y - (120);

			jQuery('.product_equipment_general_loop').css('margin-top',y+'px');
			jQuery('.product_equipment_general_loop').css('margin-left',x+'px');
			jQuery('.product_equipment_general_loop').css('width','1000px');
			jQuery('.product_equipment_general_loop').css('height','1000px');
		});

		jQuery('.product_equipment_general').hover(function(){
			jQuery('.product_equipment_general_image').addClass('product_equipment_general_image_border');
			jQuery('.product_equipment_general_default').hide();
			jQuery('.product_equipment_general_loop').show();
			product_equipment_general_default = jQuery(this).find('.product_equipment_general_image .product_equipment_general_default');
			jQuery('.product_equipment_general_loop').html(product_equipment_general_default.html());
		},function(){
			jQuery('.product_equipment_general_loop img').remove();
			jQuery('.product_equipment_general_image').removeClass('product_equipment_general_image_border');
			jQuery('.product_equipment_general_default').show();
			jQuery('.product_equipment_general_loop').hide();
		});

		jQuery('.product_equipment_general').mousemove(function(e){
			var x = e.offsetX==undefined?e.layerX:e.offsetX;
			var y = e.offsetY==undefined?e.layerY:e.offsetY;
				x = Number('-'+x);
				y = Number('-'+y);
			console.log(x +' = '+ y);
			jQuery('.product_equipment_general_loop').css('margin-top',y+'px');
			jQuery('.product_equipment_general_loop').css('margin-left',x+'px');
		});


	});
</script>

<?php get_footer(); ?>
