
<div class="modal" id="modal--next">
	<form action="#" class="modal__form form" method="POST">

		<button class="close modal__close" type="button">
			<span></span>
			<span></span>
		</button>

			<h3 class="form__title">Skontaktuj się z nami</h3>

			<input type="hidden" name="subject" value="Skontaktuj się z nami">

			<div class="form__item">
				<input type="text" name="name" placeholder="Imię i nazwisko" class="form__input _req">
			</div>

			<div class="form__item">
				<input type="tel" name="phone" placeholder="Telefon" class="form__input _req">
			</div>

			<div class="form__item">
				<input type="email" name="email" placeholder="E-mail" class="form__input _req">
			</div>

			<div class="form__item">
				<div class="form__checkbox">
					<input id="formAgreement3" type="checkbox" name="agreement" class="form__checkbox_input _req">
					<label for="formAgreement3" class="form__checkbox_label">
						<span>
							Potwierdzam, że zapoznałem (-am) się z 
							<a href="<?php echo get_home_url(); ?>/cookies" target="_blank">
								Klauzulą informacyjną dotyczącą przetwarzania danych
							</a>
							osobowych przez APRES Technology Damian Pilarski i wyrażam zgodę na kontakt w celu przedstawienia oferty.
						</span>
					</label>
				</div>
			</div>

			<div class="form__btn">
				<button type="submit" class="btn form__btn_button" name="submit">Wyślij</button>
			</div>

	</form>
</div>

<div class="modal" id="modal--two">
	<form action="#" class="modal__form form" method="POST">

		<button class="close modal__close" type="button">
			<span></span>
			<span></span>
		</button>

			<h3 class="form__title">Skontaktuj się z nami</h3>

			<input type="hidden" name="subject" value="Skontaktuj się z nami">

			<div class="form__item">
				<input type="text" name="name" placeholder="Nazwa" class="form__input _req">
			</div>

			<div class="form__item">
				<input type="tel" name="phone" placeholder="Telefon" class="form__input _req">
			</div>

			<div class="form__item">
				<input type="email" name="email" placeholder="Poczta" class="form__input _req">
			</div> 

			<div class="form__item">
				<div class="form__checkbox">
					<input id="formAgreement8" type="checkbox" name="agreement" class="form__checkbox_input _req">
					<label for="formAgreement8" class="form__checkbox_label">
						<span>
							Potwierdzam, że zapoznałem (-am) się z 
							<a href="<?php echo get_home_url(); ?>/cookies" target="_blank">
								Klauzulą informacyjną dotyczącą przetwarzania danych
							</a>
							osobowych przez APRES Technology Damian Pilarski i wyrażam zgodę na kontakt w celu 
							przedstawienia oferty.
						</span>
					</label>
				</div>
			</div>

			<div class="form__btn">
				<button type="submit" class="btn form__btn_button" name="submit">Wyślij</button>
			</div>

	</form>
</div>

<div class="modal" id="modal--thanks">
	<div class="modal__form modal__thanks">
		<button class="close modal__close" type="button">
			<span></span>
			<span></span>
		</button>

		<h3>DZIĘKUJEMY ZA ZAUFANIE</h3>
		<p>Skontaktujemy się z Wami!</p>
	</div>

</div>