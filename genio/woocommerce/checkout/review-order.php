<?php
/**
 * Review order table
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/review-order.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 5.2.0
 */

defined( 'ABSPATH' ) || exit;
?>

<div class="checkout__number">
	<p>1</p>
	<h2 class="checkout__title h2">Ваш заказ</h2>
</div>

<div class="checkout__order checkout__cart">

<?php
do_action( 'woocommerce_review_order_before_cart_contents' );

foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
	$_product = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );

	if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_checkout_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
		?>

			<div class="checkout__item">
				<?php
					$thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key );
					echo $thumbnail;
				?>
				<div class="checkout__flex">
					<h4>
						<?php echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key ) ) . '&nbsp;'; ?>
					</h4>
					<p><?php echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); ?></p>
					<?php
						echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
							'woocommerce_cart_item_remove_link',
							sprintf(
								'<a href="%s" class="checkout__close remove remove_from_cart_button" aria-label="%s" data-product_id="%s" data-product_sku="%s"></a>',
								esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
								esc_html__( 'Remove this item', 'woocommerce' ),
								esc_attr( $product_id ),
								esc_attr( $_product->get_sku() )
							),
							$cart_item_key
						);
					?>
				</div>
			</div>
		<?php
	}
}

do_action( 'woocommerce_review_order_after_cart_contents' );
?>

</div>


