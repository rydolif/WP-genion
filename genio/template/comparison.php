<?php
/* Template name: Сравнение */
?>

<?php get_header(); ?>

<main>
	<section class="comparison">

		<?php get_template_part( 'parts/page-title' ); ?>

		<div class="comparison__container container">
			<div class="comparison__grid">

				<div class="comparison__filter">
					<h4 class="comparison__elem--title">Модель</h4>
					<p class="comparison__elem">Автоматический<br> возврат на базу</p>
					<p class="comparison__elem">Система анти-<br> столкновения</p>
					<p class="comparison__elem">Система анти-<br> падения</p>
					<p class="comparison__elem">Система анти-<br> путаница</p>
					<p class="comparison__elem">Уборка по<br> расписанию</p>
					<p class="comparison__elem">Управление<br> с пульта</p>
					<p class="comparison__elem">Распознавание<br> грязных участков</p>
					<p class="comparison__elem">Адаптация<br> к пространству</p>
					<p class="comparison__elem">Голосовые<br> сообщения</p>
					<p class="comparison__elem">Двойная фильтрация <br>воздуха</p>
					<p class="comparison__elem">Наличие навигации<br> vSLAM</p>
					<p class="comparison__elem">Наличие навигации<br> LIDAR</p>
					<p class="comparison__elem">Наличие<br> гироскпопа</p>
					<p class="comparison__elem">Виртуальная стена</p>
					<p class="comparison__elem">Магнитная лента</p>
					<p class="comparison__elem">Управление<br> со смартфона</p>
					<p class="comparison__elem">Автомат. увелич.<br> мощности на коврах</p>
					<p class="comparison__elem">Влажная уборка</p>
					<p class="comparison__elem">Тип щетки</p>
					<p class="comparison__elem">Емкость контей-<br> нера для пыли</p>
					<p class="comparison__elem">Емкость контей-<br> нера для жидкости</p>
					<p class="comparison__elem">Батарея</p>
					<p class="comparison__elem">Площадь<br> уборки</p>
					<p class="comparison__elem">Время работы</p>
					<p class="comparison__elem">Время зарядки</p>
					<p class="comparison__elem">Уровень шума</p>
					<p class="comparison__elem">Количество<br> датчиков</p>
					<p class="comparison__elem">Количество<br> боковых щеток</p>
					<p class="comparison__elem">Ширина</p>
					<p class="comparison__elem">Высота</p>
					<p class="comparison__elem">Вес</p>
				</div>

				<?php if( have_rows('tovar') ): ?>
					<?php while( have_rows('tovar') ): the_row(); 
						$img = get_sub_field('img');
						$name = get_sub_field('name');

						$return_to_base = get_sub_field('return_to_base');
						$anti_collision = get_sub_field('anti_collision');
						$anti_fall = get_sub_field('anti_fall');
						$anti_confusion = get_sub_field('anti_confusion');
						$cleaning_by_timetable = get_sub_field('cleaning_by_timetable');
						$control_from_the_remote = get_sub_field('control_from_the_remote');
						$recognition_dirty_areas = get_sub_field('recognition_dirty_areas');
						$adaptation_to_space = get_sub_field('adaptation_to_space');
						$voice_messages = get_sub_field('voice_messages');
						$double_filtration_air = get_sub_field('double_filtration_air');
						$availability_of_navigation_vslam = get_sub_field('availability_of_navigation_vslam');
						$availability_of_navigation_lidar = get_sub_field('availability_of_navigation_lidar');
						$availability_gyroscopa = get_sub_field('availability_gyroscopa');
						$virtual_wall = get_sub_field('virtual_wall');
						$magnetic_tape = get_sub_field('magnetic_tape');
						$control_from_smartphone = get_sub_field('control_from_smartphone');
						$machine_increase_power_on_carpets = get_sub_field('machine_increase_power_on_carpets');
						$wet_cleaning = get_sub_field('wet_cleaning');
						$brush_type = get_sub_field('brush_type');
						$dust_container_capacity = get_sub_field('dust_container_capacity');
						$liquid_container_capacity = get_sub_field('liquid_container_capacity');
						$battery = get_sub_field('battery');
						$square_cleaning = get_sub_field('square_cleaning');
						$working_hours = get_sub_field('working_hours');
						$charging_time = get_sub_field('charging_time');
						$noise_level = get_sub_field('noise_level');
						$quantity_sensors = get_sub_field('quantity_sensors');
						$quantity_side_brushes = get_sub_field('quantity_side_brushes');
						$width = get_sub_field('width');
						$height = get_sub_field('height');
						$the_weight = get_sub_field('the_weight');

					?>

					<div class="comparison__item">
						<div class="comparison__elem--title comparison__img">
							<a href="#"><img src="<?php echo $img; ?>" alt=""></a>
							<h4><?php echo $name; ?></h4>
						</div>
						<p class="comparison__elem">
							<?php if($return_to_base){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($anti_collision){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($anti_fall){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($anti_confusion){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($cleaning_by_timetable){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($control_from_the_remote){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($recognition_dirty_areas){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($adaptation_to_space){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($voice_messages){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($double_filtration_air){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($availability_of_navigation_vslam){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($availability_of_navigation_lidar){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($availability_gyroscopa){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($virtual_wall){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($magnetic_tape){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($control_from_smartphone){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($machine_increase_power_on_carpets){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem">
							<?php if($wet_cleaning){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p class="comparison__elem"><?php echo $brush_type; ?></p>
						<p class="comparison__elem"><?php echo $dust_container_capacity; ?></p>
						<p class="comparison__elem"><?php echo $liquid_container_capacity; ?></p>
						<p class="comparison__elem"><?php echo $battery; ?></p>
						<p class="comparison__elem"><?php echo $square_cleaning; ?></p>
						<p class="comparison__elem"><?php echo $working_hours; ?></p>
						<p class="comparison__elem"><?php echo $charging_time; ?></p>
						<p class="comparison__elem"><?php echo $noise_level; ?></p>
						<p class="comparison__elem"><?php echo $quantity_sensors; ?></p>
						<p class="comparison__elem"><?php echo $quantity_side_brushes; ?></p>
						<p class="comparison__elem"><?php echo $width; ?></p>
						<p class="comparison__elem"><?php echo $height; ?></p>
						<p class="comparison__elem"><?php echo $the_weight; ?></p>
					</div>

					<?php endwhile; ?>
				<?php endif; ?>

			</div>
		</div>
	</section>

	<section class="comparison">
		<div class="comparison__container container">
			<div class="comparison__grid">

				<div class="comparison__filter">
					<h4 class="comparison__elem--title">Модель</h4>
					<p class="comparison__elem">OLED дисплей</p>
					<p class="comparison__elem">УФ лампа</p>
					<p class="comparison__elem">Сьемный аккумулятор</p>
					<p class="comparison__elem">Технология движения No-Effort</p>
					<p class="comparison__elem">Увеличения мощности на рукоятке</p>
					<p class="comparison__elem">Мощность</p>
					<p class="comparison__elem">Мощность всасывания</p>
					<p class="comparison__elem">Давление всасывания</p>
					<p class="comparison__elem">Емкость контейнера <br>для пыли</p>
					<p class="comparison__elem">Батерея</p>
					<p class="comparison__elem">Время работы</p>
					<p class="comparison__elem">Уровень шума</p>
					<p class="comparison__elem">Количество насадок</p>
					<p class="comparison__elem">Вес</p>
				</div>

				<?php if( have_rows('model_stick') ): ?>
					<?php while( have_rows('model_stick') ): the_row(); 
						$img = get_sub_field('img');
						$name = get_sub_field('name');

						$oled_display = get_sub_field('oled_display');
						$ultraviolet_lamp = get_sub_field('ultraviolet_lamp');
						$removable_battery = get_sub_field('removable_battery');
						$no_effort_motion_technology = get_sub_field('no_effort_motion_technology');
						$increased_power_at_the_handle = get_sub_field('increased_power_at_the_handle');
						$power = get_sub_field('power');
						$suction_power = get_sub_field('suction_power');
						$suction_pressure = get_sub_field('suction_pressure');
						$container_capacity_for_dust = get_sub_field('container_capacity_for_dust');
						$battery = get_sub_field('battery');
						$working_hours = get_sub_field('working_hours');
						$noise_level = get_sub_field('noise_level');
						$number_of_attachments = get_sub_field('number_of_attachments');
						$the_weight = get_sub_field('the_weight');

					?>
						<div class="comparison__item">
							<div class="comparison__elem--title comparison__img">
								<img src="<?php echo $img; ?>" alt="">
								<h4><?php echo $name; ?></h4>
							</div>
							<p class="comparison__elem">
								<?php if($oled_display){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p class="comparison__elem">
								<?php if($ultraviolet_lamp){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p class="comparison__elem">
								<?php if($removable_battery){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p class="comparison__elem">
								<?php if($no_effort_motion_technology){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p class="comparison__elem">
								<?php if($increased_power_at_the_handle){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p class="comparison__elem"><?php echo $power; ?></p>
							<p class="comparison__elem"><?php echo $suction_power; ?></p>
							<p class="comparison__elem"><?php echo $suction_pressure; ?></p>
							<p class="comparison__elem"><?php echo $container_capacity_for_dust; ?></p>
							<p class="comparison__elem"><?php echo $battery; ?></p>
							<p class="comparison__elem"><?php echo $working_hours; ?></p>
							<p class="comparison__elem"><?php echo $noise_level; ?></p>
							<p class="comparison__elem"><?php echo $number_of_attachments; ?></p>
							<p class="comparison__elem"><?php echo $the_weight; ?></p>
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
			</div>
		</div>
	</section>

	<section class="comparison">
		<div class="comparison__container container">
			<div class="comparison__grid comparison__robot">

			<?php 
				while ( have_rows('robot_washer') ) : the_row();
					$product = get_sub_field('product');
					$ID = '';
					$title = '';

					if(!empty($product->ID )){
						$ID = $product->ID;
					}
					
					$product = wc_get_product( $ID );
					$the_title = $product->get_title();
					$img = $product->get_image();
			?>
					<div class="comparison__filter comparison__robot_title">
						<h4 class="comparison__elem--title">Модель</h4>

						<?php while( have_rows('characteristics', $ID ) ): the_row(); 
							$title = get_sub_field('title');
						?>
							<p class="comparison__elem"><?php echo $title; ?></p>
						<?php endwhile; ?>

						<?php while( have_rows('functions', $ID ) ): the_row(); 
							$title = get_sub_field('title');
						?>
							<p class="comparison__elem"><?php echo $title; ?></p>
						<?php endwhile; ?>

						<?php while( have_rows('sizes', $ID ) ): the_row(); 
							$title = get_sub_field('title');
						?>
							<p class="comparison__elem"><?php echo $title; ?></p>
						<?php endwhile; ?>
					</div>

					<div class="comparison__item">
						<div class="comparison__img comparison__elem--title">
							<?php echo $img; ?>
							<h4><?php echo $the_title; ?></h4>
						</div>

						<?php while( have_rows('characteristics', $ID ) ): the_row(); 
								$value = get_sub_field('value');
							?>
								<p class="comparison__elem"><?php echo $value; ?></p>
							<?php endwhile; ?>

							<?php while( have_rows('functions', $ID ) ): the_row(); 
								$title = get_sub_field('title');
							?>
								<p class="comparison__elem">
									<?php if ($title) { ?>
										<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
									<?php } ?>
								</p>
							<?php endwhile; ?>

							<?php while( have_rows('sizes', $ID ) ): the_row(); 
								$value = get_sub_field('value');
							?>
								<p class="comparison__elem"><?php echo $value; ?></p>
							<?php endwhile; ?>
					</div>

			<?php endwhile; ?>
				
			</div>
		</div>
	</section>

</main>

<?php get_footer(); ?>