
<div class="title container">
	<h1 class="h1"><?php the_title(); ?></h1>
	<?php 
		wp_nav_menu( array(
		'menu'=>'quesction',
		'menu_class'=>'list',
		'theme_location'=>'menu',
		) );
	?>
</div>

<div class="border"></div>