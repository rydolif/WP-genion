<?php

//------------------чистка від лишнього ----------------------
	remove_action('wp_head','feed_links_extra', 3); // убирает ссылки на rss категорий
	remove_action('wp_head','feed_links', 2); // минус ссылки на основной rss и комментарии
	remove_action('wp_head','rsd_link');  // сервис Really Simple Discovery
	remove_action('wp_head','wlwmanifest_link'); // Windows Live Writer
	// function theme_name_scripts() {
	// 		wp_enqueue_script( 'jquery' );
	// }
	// add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );

function remove_menus(){
  // remove_menu_page( 'index.php' );                  //Консоль
  remove_menu_page( 'edit.php' );                   //Записи
  // remove_menu_page( 'upload.php' );                 //Медиафайлы
  // remove_menu_page( 'edit.php?post_type=page' );    //Страницы
  remove_menu_page( 'edit-comments.php' );          //Комментарии
  // remove_menu_page( 'themes.php' );                 //Внешний вид
  // remove_menu_page( 'plugins.php' );                //Плагины
  // remove_menu_page( 'users.php' );                  //Пользователи
  // remove_menu_page( 'tools.php' );                  //Инструменты
  // remove_menu_page( 'options-general.php' );        //Настройки
}
add_action( 'admin_menu', 'remove_menus' );

//------------------меню----------------------
register_nav_menus(array(
	'menu' => 'Навигация по сайту'
));


// Все $fields в этой функции будут пропущены через фильтр
add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );
function custom_override_checkout_fields( $fields ) {
	unset($fields['billing']['billing_company']);
	unset($fields['billing']['billing_last_name']);
	unset($fields['billing']['billing_address_2']);
	unset($fields['billing']['billing_country']);
	unset($fields['billing']['billing_state']);
	unset($fields['billing']['billing_postcode']);

	$fields['billing']['billing_city']['required'] = false;
	$fields['billing']['billing_address_1']['required'] = false;
	$fields['billing']['billing_email']['required'] = false;

	$fields['order']['order_comments']['label'] = 'Примечание к заказу';
	$fields['order']['order_comments']['placeholder'] = '';

	$fields['billing']['billing_first_name']['label'] = 'ФИО';
	$fields['billing']['billing_city']['label'] = 'Город';

	return $fields;
}

add_filter( 'woocommerce_billing_fields', 'estore_woocommerce_custom_checkout_billing_fields', 10, 2 );
function estore_woocommerce_custom_checkout_billing_fields( $address_fields, $country ) {
	$address_fields['billing_first_name']['class'] = array( 'form__item' );
	$address_fields['billing_last_name']['class'] = array( 'form__item' );
	$address_fields['billing_city']['class'] = array( 'form__item form__place' );
	$address_fields['billing_address_1']['class'] = array( 'form__item' );
	$address_fields['billing_phone']['class'] = array( 'form__item_row' );
	$address_fields['billing_email']['class'] = array( 'form__item_row' );
	return $address_fields;
}
