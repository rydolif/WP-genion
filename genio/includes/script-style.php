<?php
//------------------додавання css + js ----------------------
  function ewa_scripts() {
    //---------------css---------------------
    wp_enqueue_style( 'main-style', get_template_directory_uri() . '/assets/css/app.min.css' );
    //---------------js---------------------
    wp_enqueue_script( 'main-sctipt', get_template_directory_uri() . '/assets/js/app.min.js', array(), '', true );
    
    if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
      wp_enqueue_script( 'comment-reply' );
    }
  }
  add_action( 'wp_enqueue_scripts', 'ewa_scripts' );


//------------------підключення додаткових функцій для постов ----------------------
  function myfirsttheme_setup() {
      add_theme_support( 'post-thumbnails' );
      add_theme_support( 'post-formats', array ( 'aside', 'gallery', 'quote', 'image', 'video' ) );
  }
  add_action( 'after_setup_theme', 'myfirsttheme_setup' );
  
  
//------------------стили админка ----------------------
  add_action('admin_head', 'moi_novii_style');
  function moi_novii_style() {
  print '<style>
    /*Стили в админку*/
      .editor-block-list__block {
        max-width: 100%;
      }
      .wp-block {
        max-width: 100%;
			}
  </style>';
	}
	