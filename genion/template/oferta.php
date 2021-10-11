<?php
/* Template name: Oferta page */
?>

<?php
	get_header();
?>

	<section class="about oferta">
		<div class="container">

			<div class="about__bunner oferta__bunner">
				<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta.jpg" alt="" class="oferta__bunner_img">
				<h2 class="about__title h2">Oferta</h2>
			</div>

			<div class="oferta__list click">
				<a href="#panel" class="oferta__list_item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta__list_item1.jpg" alt="" class="oferta__list_img">
					<h3 class="oferta__list_title">PANELE FOTOWOLTAICZNE</h3>
					<p class="oferta__list_text">
						Panele wykorzystywane w naszych instalacjach produkowane są przez najlepszych i najbardziej 
						uznanych producentów na świecie.
					</p>
				</a>

				<a href="#inverters" class="oferta__list_item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta__list_item2.jpg" alt="" class="oferta__list_img">
					<h3 class="oferta__list_title">FALOWNIKI</h3>
					<p class="oferta__list_text">
						Falowniki w instalacjach fotowoltaicznych powinny charakteryzować się wysoką sprawnością i 
						niezawodnością działania. Poznaj naszą ofertę falowników!
					</p>
				</a>

				<a href="#system" class="oferta__list_item">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta__list_item3.jpg" alt="" class="oferta__list_img">
					<h3 class="oferta__list_title">SYSTEMY <br>MONTAŻOWE ORAZ ZABEZPIECZENIA ELEKTRYCZNE</h3>
					<p class="oferta__list_text">
						Podstawą dobrze wykonanej instalacją są odpowiednie systemy montażowe oraz zabezpieczenia 
						elektryczne. Korzystamy ze sprawdzonych polskich producentów!
					</p>
				</a>
			</div>

			<?php if( have_rows('panel') ): ?>
				<div class="about__bunner oferta__bunner" id="panel">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta2.jpg" alt="" class="oferta__bunner_img">
					<h2 class="about__title h2">PANELE FOTOWOLTAICZNE</h2>
				</div>

				<div class="oferta__wrap">
					<?php while( have_rows('panel') ): the_row();
						$logo = get_sub_field('logo');
						$img = get_sub_field('img');
						$desc = get_sub_field('desc');
					?>

					<div class="oferta__wrap_item">
						<img src="<?php echo $logo; ?>" class="oferta__wrap_logo">
						<div class="oferta__wrap_img">
							<img src="<?php echo $img; ?>" class="oferta__wrap_logo">
						</div>
						<div class="oferta__wrap_desc">
							<?php echo $desc; ?>
						</div>
					</div>

					<?php endwhile; ?>
					</div>
			<?php endif; ?>


			<?php if( have_rows('inverters') ): ?>
				<div class="about__bunner oferta__bunner" id="inverters">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta3.jpg" alt="" class="oferta__bunner_img">
					<h2 class="about__title h2">Falowniki</h2>
				</div>

				<div class="oferta__wrap">
					<?php while( have_rows('inverters') ): the_row();
						$logo = get_sub_field('logo');
						$img = get_sub_field('img');
						$desc = get_sub_field('desc');
					?>

					<div class="oferta__wrap_item">
						<img src="<?php echo $logo; ?>" class="oferta__wrap_logo">
						<div class="oferta__wrap_img">
							<img src="<?php echo $img; ?>" class="oferta__wrap_logo">
						</div>
						<div class="oferta__wrap_desc">
							<?php echo $desc; ?>
						</div>
					</div>

					<?php endwhile; ?>
					</div>
			<?php endif; ?>


			<?php if( have_rows('system') ): ?>
				<div class="about__bunner oferta__bunner" id="system">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/oferta4.jpg" alt="" class="oferta__bunner_img">
					<h2 class="about__title h2">SYSTEMY MONTAŻOWE ORAZ ZABEZPIECZENIA ELEKTRYCZNE</h2>
				</div>

				<div class="oferta__wrap">
					<?php while( have_rows('system') ): the_row();
						$logo = get_sub_field('logo');
						$img = get_sub_field('img');
						$desc = get_sub_field('desc');
					?>

					<div class="oferta__wrap_item">
						<img src="<?php echo $logo; ?>" class="oferta__wrap_logo">
						<div class="oferta__wrap_img">
							<img src="<?php echo $img; ?>" class="oferta__wrap_logo">
						</div>
						<div class="oferta__wrap_desc">
							<?php echo $desc; ?>
						</div>
					</div>

					<?php endwhile; ?>
					</div>
			<?php endif; ?>

		</div>
	</section>


	<?php get_template_part( 'parts/oferta' ); ?>

<?php
	get_footer();
