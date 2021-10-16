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
