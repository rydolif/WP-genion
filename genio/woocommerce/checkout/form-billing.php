<?php
/**
 * Checkout billing information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-billing.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 * @global WC_Checkout $checkout
 */

defined( 'ABSPATH' ) || exit;
?>


<div class="checkout__block">

	<?php do_action( 'woocommerce_after_checkout_billing_form', $checkout ); ?>

	<div class="checkout__row_cart">
		<?php do_action( 'woocommerce_checkout_order_review' ); ?>
		<?php do_action( 'woocommerce_before_checkout_billing_form', $checkout ); ?>
	</div>

	<div class="checkout__row_form">
		<div class="checkout__number">
			<p>3</p>
			<h2 class="checkout__title h2">Платежные данные</h2>
		</div>
		<?php
		$fields = $checkout->get_checkout_fields( 'billing' );

		foreach ( $fields as $key => $field ) {
			woocommerce_form_field( $key, $field, $checkout->get_value( $key ) );
		}
		?>

		<?php do_action( 'woocommerce_checkout_shipping' ); ?>

		<div class="form__btn">
			<?php echo apply_filters( 'woocommerce_order_button_html', '<button type="submit" class="btn btn--checkout" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '">Оформить заказ</button>' ); // @codingStandardsIgnoreLine ?>
		</div>

	</div>

</div>