
<header class="header">
	<div class="header__container container">
		<a href="<?php echo get_home_url(); ?>" class="header__logo">
			<b>GENIO</b>
			<span>Фирменный магазин</span>
		</a>

		<nav class="header__nav">
			<?php 
				wp_nav_menu( array(
					'menu'=>'header_menu',
					'menu_class'=>'list',
					'theme_location'=>'menu',
				) );
			?>
		</nav>

		<div class="header__info">
			<a href="tel:+74950032479" class="header__tell">+7 495 003-24-79</a>
			<div class="header__basket">
				<a href="checkout.html" class="header__cart">
					<svg height="414pt" viewBox="0 -11 414.00226 414" width="414pt" xmlns="http://www.w3.org/2000/svg"><path d="m202.480469 352.132812c0-21.800781-17.671875-39.472656-39.46875-39.472656-21.800781 0-39.472657 17.671875-39.472657 39.46875 0 21.800782 17.671876 39.472656 39.472657 39.472656 21.785156-.023437 39.445312-17.679687 39.46875-39.46875zm-64.941407 0c0-14.070312 11.402344-25.472656 25.472657-25.472656 14.066406 0 25.46875 11.402344 25.46875 25.46875 0 14.070313-11.402344 25.472656-25.46875 25.472656-14.0625-.015624-25.457031-11.410156-25.472657-25.46875zm0 0"/><path d="m309.167969 391.601562c21.800781.003907 39.472656-17.667968 39.472656-39.46875.003906-21.800781-17.667969-39.472656-39.46875-39.472656s-39.472656 17.671875-39.472656 39.472656c.027343 21.785157 17.679687 39.441407 39.46875 39.46875zm0-64.941406c14.066406 0 25.472656 11.402344 25.472656 25.46875.003906 14.066406-11.402344 25.472656-25.46875 25.472656s-25.472656-11.402343-25.472656-25.46875c.015625-14.058593 11.410156-25.453124 25.46875-25.472656zm0 0"/><path d="m7 14h42.699219c14.050781-.054688 26.03125 10.175781 28.171875 24.066406l33.800781 213.511719c3.191406 20.703125 21.050781 35.957031 42 35.875h208.929687c3.863282 0 7-3.136719 7-7 0-3.867187-3.136718-7-7-7h-208.929687c-14.050781.054687-26.03125-10.179687-28.171875-24.066406l-5.746094-36.300781h213.980469c18.117187-.007813 34.242187-11.484376 40.179687-28.597657l39.699219-114.578125c.746094-2.140625.40625-4.507812-.90625-6.355468-1.316406-1.84375-3.441406-2.941407-5.707031-2.941407h-311.386719l-3.914062-24.738281c-3.191407-20.703125-21.050781-35.9570312-42-35.875h-42.699219c-3.867188 0-7 3.136719-7 7 0 3.867188 3.132812 7 7 7zm390.164062 60.617188-36.476562 105.285156c-3.984375 11.480468-14.800781 19.179687-26.953125 19.183594h-216.199219l-19.707031-124.472657zm0 0"/>
					</svg>
					<span class="header__cart_quantity">0</span>
				</a>
				<div class="header__mincart">
					<div class="header__mincart_wrap">
						<div class="header__mincart_product">
							<a href="#" class="header__mincart_img">
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/genio-product-2.png" alt="">
							</a>
							<div class="header__text">
								<h4><a href="#">Genio Laser L800</a></h4>
								<p>32 590 ₽</p>
							</div>
							<button class="header__mincart_close"></button>
						</div>
					</div>
					<div class="header__delivery">
						<div class="header__row">
							<p>Доставка</p>
							<p>Бесплатно!</p>
						</div>
						<div class="header__line"></div>
						<div class="header__row">
							<p>Итог</p>
							<h4>32 590 <span>₽</span></h4>
						</div>
						<a href="checkout.html" class="header__button">Оформления заказа</a>
					</div>
				</div>
				<div class="header__mincartempty">
					<h2>Ваша корзина пуста</h2>
				</div>
			</div>
			<button class="hamburger hamburger--page" type="button">
				<span class="hamburger__item "></span>
			</button>
		</div>
	</div>
</header>