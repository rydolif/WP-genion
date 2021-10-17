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
					<h4>Модель</h4>
					<p>Автоматический<br> возврат на базу</p>
					<p>Система анти-<br> столкновения</p>
					<p>Система анти-<br> падения</p>
					<p>Система анти-<br> путаница</p>
					<p>Уборка по<br> расписанию</p>
					<p>Управление<br> с пульта</p>
					<p>Распознавание<br> грязных участков</p>
					<p>Адаптация<br> к пространству</p>
					<p>Голосовые<br> сообщения</p>
					<p>Двойная фильтрация <br>воздуха</p>
					<p>Наличие навигации<br> vSLAM</p>
					<p>Наличие навигации<br> LIDAR</p>
					<p>Наличие<br> гироскпопа</p>
					<p>Виртуальная стена</p>
					<p>Магнитная лента</p>
					<p>Управление<br> со смартфона</p>
					<p>Автомат. увелич.<br> мощности на коврах</p>
					<p>Влажная уборка</p>
					<p>Тип щетки</p>
					<p>Емкость контей-<br> нера для пыли</p>
					<p>Емкость контей-<br> нера для жидкости</p>
					<p>Батарея</p>
					<p>Площадь<br> уборки</p>
					<p>Время работы</p>
					<p>Время зарядки</p>
					<p>Уровень шума</p>
					<p>Количество<br> датчиков</p>
					<p>Количество<br> боковых щеток</p>
					<p>Ширина</p>
					<p>Высота</p>
					<p>Вес</p>
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
						<div class="comparison__img">
							<a href="#"><img src="<?php echo $img; ?>" alt=""></a>
							<h4><?php echo $name; ?></h4>
						</div>
						<p>
							<?php if($return_to_base){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($anti_collision){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($anti_fall){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($anti_confusion){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($cleaning_by_timetable){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($control_from_the_remote){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($recognition_dirty_areas){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($adaptation_to_space){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($voice_messages){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($double_filtration_air){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($availability_of_navigation_vslam){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($availability_of_navigation_lidar){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($availability_gyroscopa){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($virtual_wall){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($magnetic_tape){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($control_from_smartphone){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($machine_increase_power_on_carpets){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p>
							<?php if($wet_cleaning){ ?>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
							<?php } ?>
						</p>
						<p><?php echo $brush_type; ?></p>
						<p><?php echo $dust_container_capacity; ?></p>
						<p><?php echo $liquid_container_capacity; ?></p>
						<p><?php echo $battery; ?></p>
						<p><?php echo $square_cleaning; ?></p>
						<p><?php echo $working_hours; ?></p>
						<p><?php echo $charging_time; ?></p>
						<p><?php echo $noise_level; ?></p>
						<p><?php echo $quantity_sensors; ?></p>
						<p><?php echo $quantity_side_brushes; ?></p>
						<p><?php echo $width; ?></p>
						<p><?php echo $height; ?></p>
						<p><?php echo $the_weight; ?></p>
					</div>

					<?php endwhile; ?>
				<?php endif; ?>

			</div>
		</div>
	</section>

	<section class="comparison">
		<div class="comparison__container container">
			<div class="comparison__grid_stick">

				<div class="comparison__filter comparison__filter_stick">
					<h4>Модель</h4>
					<p>OLED дисплей</p>
					<p>УФ лампа</p>
					<p>Сьемный аккумулятор</p>
					<p>Технология движения No-Effort</p>
					<p>Увеличения мощности на рукоятке</p>
					<p>Мощность</p>
					<p>Мощность всасывания</p>
					<p>Давление всасывания</p>
					<p>Емкость контейнера <br>для пыли</p>
					<p>Батерея</p>
					<p>Время работы</p>
					<p>Уровень шума</p>
					<p>Количество насадок</p>
					<p>Вес</p>
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
						<div class="comparison__item comparison__item_stick">
							<div class="comparison__img">
								<img src="<?php echo $img; ?>" alt="">
								<h4><?php echo $name; ?></h4>
							</div>
							<p>
								<?php if($oled_display){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p>
								<?php if($ultraviolet_lamp){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p>
								<?php if($removable_battery){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p>
								<?php if($no_effort_motion_technology){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p>
								<?php if($increased_power_at_the_handle){ ?>
									<img src="<?php echo get_template_directory_uri(); ?>/assets/img/checked.png" alt="">
								<?php } ?>
							</p>
							<p><?php echo $power; ?></p>
							<p><?php echo $suction_power; ?></p>
							<p><?php echo $suction_pressure; ?></p>
							<p><?php echo $container_capacity_for_dust; ?></p>
							<p><?php echo $battery; ?></p>
							<p><?php echo $working_hours; ?></p>
							<p><?php echo $noise_level; ?></p>
							<p><?php echo $number_of_attachments; ?></p>
							<p><?php echo $the_weight; ?></p>
						</div>
					<?php endwhile; ?>
				<?php endif; ?>
			</div>
		</div>
	</section>

</main>

<?php get_footer(); ?>