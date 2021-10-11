<?php

/**
 * schoolstudy functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package schoolstudy
 */

if (!function_exists('schoolstudy_setup')) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function schoolstudy_setup()
	{
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on schoolstudy, use a find and replace
		 * to change 'schoolstudy' to the name of your theme in all the template files.
		 */
		load_theme_textdomain('schoolstudy', get_template_directory() . '/languages');

		// Add default posts and comments RSS feed links to head.
		add_theme_support('automatic-feed-links');

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support('title-tag');

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support('post-thumbnails');

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(array(
			'menu-1' => esc_html__('Первичный', 'schoolstudy'),
		));

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support('html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		));

		// Set up the WordPress core custom background feature.
		add_theme_support('custom-background', apply_filters('schoolstudy_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		)));

		// Add theme support for selective refresh for widgets.
		add_theme_support('customize-selective-refresh-widgets');

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support('custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		));
	}
endif;
add_action('after_setup_theme', 'schoolstudy_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function schoolstudy_content_width()
{
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters('schoolstudy_content_width', 640);
}
add_action('after_setup_theme', 'schoolstudy_content_width', 0);


/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/includes/custom-header.php';

/**
 * Implement the Script-Style
 */
require get_template_directory() . '/includes/script-style.php';


/**
 * ACF
 */
require get_template_directory() . '/includes/acf.php';



/**
 * currency - валюта
 */
// require get_template_directory() . '/includes/currency.php';


/**
 * filter - фильтр каталога
 */
// require get_template_directory() . '/includes/filter.php';


/**
 * post-type
 */
require get_template_directory() . '/includes/post-type.php';

//------------------пагинация----------------------
	function wptuts_pagination( $args = array() ) {
			
			$defaults = array(
					'range'           => 4,
					'custom_query'    => FALSE,
					'previous_string' => __( '<', 'text-domain' ),
					'next_string'     => __( '>', 'text-domain' ),
					'before_output'   => '<nav class="news__pagination">',
					'after_output'    => '</nav>'
			);
			
			$args = wp_parse_args( 
					$args, 
					apply_filters( 'wp_bootstrap_pagination_defaults', $defaults )
			);
			
			$args['range'] = (int) $args['range'] - 1;
			if ( !$args['custom_query'] )
					$args['custom_query'] = @$GLOBALS['wp_query'];
			$count = (int) $args['custom_query']->max_num_pages;
			$page  = intval( get_query_var( 'paged' ) );
			$ceil  = ceil( $args['range'] / 2 );
			
			if ( $count <= 1 )
					return FALSE;
			
			if ( !$page )
					$page = 1;
			
			if ( $count > $args['range'] ) {
					if ( $page <= $args['range'] ) {
							$min = 1;
							$max = $args['range'] + 1;
					} elseif ( $page >= ($count - $ceil) ) {
							$min = $count - $args['range'];
							$max = $count;
					} elseif ( $page >= $args['range'] && $page < ($count - $ceil) ) {
							$min = $page - $ceil;
							$max = $page + $ceil;
					}
			} else {
					$min = 1;
					$max = $count;
			}
			
			$echo = '';
			$previous = intval($page) - 1;


			$previous = esc_attr( get_pagenum_link($previous) );
					if ( $previous && (1 != $page) )
					$echo .= '<a href="' . $previous . '" title="' . __( '', 'text-domain') . '">' . $args['previous_string'] . '</a>';
			
			if ( !empty($min) && !empty($max) ) {
					for( $i = $min; $i <= $max; $i++ ) {
							if ($page == $i) {
									$echo .= '<span class="active">' . str_pad( (int)$i, 1, '0', STR_PAD_LEFT ) . '</span>';
							} else {
									$echo .= sprintf( '<a href="%s">%2d</a>', esc_attr( get_pagenum_link($i) ), $i );
							}
					}
			}
			
			$next = intval($page) + 1;
			$next = esc_attr( get_pagenum_link($next) );
			if ($next && ($count != $page) )
					$echo .= '<a href="' . $next . '" title="' . __( '', 'text-domain') . '">' . $args['next_string'] . '</a>';
			
			if ( isset($echo) )
					echo $args['before_output'] . $echo . $args['after_output'];
	}


//------------------чистка від лишнього ----------------------
	remove_action('wp_head','feed_links_extra', 3); // убирает ссылки на rss категорий
	remove_action('wp_head','feed_links', 2); // минус ссылки на основной rss и комментарии
	remove_action('wp_head','rsd_link');  // сервис Really Simple Discovery
	remove_action('wp_head','wlwmanifest_link'); // Windows Live Writer
	// function theme_name_scripts() {
	// 		wp_enqueue_script( 'jquery' );
	// }
	// add_action( 'wp_enqueue_scripts', 'theme_name_scripts' );
	

	/* WooCommerce Password Strength */
add_filter( 'woocommerce_min_password_strength', 'example_woocommerce_min_password_strength' );
function example_woocommerce_min_password_strength( $strength ) {
    return 1;
}

function remove_menus(){
  // remove_menu_page( 'index.php' );                  //Консоль
  remove_menu_page( 'edit.php' );                   //Записи
  // remove_menu_page( 'upload.php' );                 //Медиафайлы
  // remove_menu_page( 'edit.php?post_type=page' );    //Страницы
  remove_menu_page( 'edit-comments.php' );          //Комментарии
  // remove_menu_page( 'themes.php' );                 //Внешний вид
  // remove_menu_page( 'plugins.php' );                //Плагины
  remove_menu_page( 'users.php' );                  //Пользователи
  // remove_menu_page( 'tools.php' );                  //Инструменты
  // remove_menu_page( 'options-general.php' );        //Настройки
}
add_action( 'admin_menu', 'remove_menus' );


/**
 * ACF Load More Repeater
*/

// add action for logged in users
add_action('wp_ajax_my_repeater_show', 'my_repeater_show');
// add action for non logged in users
add_action('wp_ajax_nopriv_my_repeater_show', 'my_repeater_show');

function my_repeater_show() {
	// validate the nonce
	if (!isset($_POST['nonce']) || !wp_verify_nonce($_POST['nonce'], 'my_repeater_field')) {
		exit;
	}
	// make sure we have the other values
	if (!isset($_POST['post_id']) || !isset($_POST['offset'])) {
		return;
	}
	$show = 3; // how many more to show
	$start = $_POST['offset'];
	$end = $start+$show;
	$post_id = $_POST['post_id'];
	// use an object buffer to capture the html output
	// alternately you could create a varaible like $html
	// and add the content to this string, but I find
	// object buffers make the code easier to work with
	ob_start();
	if (have_rows('list', $post_id)) {
		$total = count(get_field('list', $post_id));
		$count = 0;
		while (have_rows('list', $post_id)) {
			the_row();
			if ($count < $start) {
				// we have not gotten to where
				// we need to start showing
				// increment count and continue
				$count++;
				continue;
			}
			?>

			<div class="news__grid_item">
				<a href="<?php the_sub_field('img'); ?>" data-fancybox="gallery" class="news__grid_img">
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
			$count++;
			if ($count == $end) {
				// we've shown the number, break out of loop
				break;
			}
		} // end while have rows
	} // end if have rows
	$content = ob_get_clean();
	// check to see if we've shown the last item
	$more = false;
	if ($total > $count) {
		$more = true;
	}
	// output our 3 values as a json encoded array
	echo json_encode(array('content' => $content, 'more' => $more, 'offset' => $end));
	exit;
} // end function my_repeater_show_more