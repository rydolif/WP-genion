<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 *
 * @package mira
 */

global $mira_opt;

get_header(); ?>

		
	<div class="page-not-found-wrap mb-50">
		<div class="container">
			<div class="row">
				
	            <div class="col-md-12">
	                <div class="pnf-inner-wrap">
		                <div class="pnf-inner text-center">

		                	<?php if ( 'image' == $mira_opt['mira_404_control']){
		                		?>
		                		<img src="<?php echo esc_url($mira_opt['mira_404_img']['url']); ?>" alt="">
		                		<?php
		                	}elseif('title' == $mira_opt['mira_404_control']){ ?>

		                	<h1><?php echo esc_attr($mira_opt['mira_404_title'],'mira'); ?></h1> <?php }else{ ?>
		                		<h1><?php echo esc_html__('404','mira'); ?></h1> <?php
		                		}  ?>
							
							<?php if($mira_opt['mira_404_subtitle']){ ?>
		                    <h2><?php echo esc_attr( $mira_opt['mira_404_subtitle'],'mira' ); ?></h2>
		                   <?php }else{ ?>
		                   	<h2><?php echo esc_html__('PAGE NOT FOUND','mira'); ?></h2>
		                  <?php } 

		                   if($mira_opt['mira_404_info']) { ?>

		                    <p><?php echo esc_attr($mira_opt['mira_404_info'],'mira'); ?></p>
		                    <?php }else { ?> <p> <?php echo esc_html__('The page you are looking for does not exist or has been moved.','mira'); ?> </p> <?php
		                    	} ?>
		                    

		                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>" class="btn"><?php if( $mira_opt['mira_button_text'] ){echo esc_attr( $mira_opt['mira_button_text'] ); }else{echo esc_html__('Go back to Home Page','mira'); } ?></a>

		                </div>
	                </div>
	            </div>
				
			</div>
		</div>	
	</div>

<?php

get_footer();
