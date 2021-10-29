document.addEventListener("DOMContentLoaded", function() {

//----------------PRELOADER-----------------------
	window.onload = function () {
		document.body.classList.add('loaded_hiding');
		window.setTimeout(function () {
			document.body.classList.add('loaded');
			document.body.classList.remove('loaded_hiding');
		}, 500);
	}

//----------------------HAMBURGER-----------------------
	const hamburger = (hamburgerButton, hamburgerNav, hamburgerHeader) => {
		const button = document.querySelector(hamburgerButton),
					nav = document.querySelector(hamburgerNav),
					header = document.querySelector(hamburgerHeader);

		button.addEventListener('click', (e) => {
			button.classList.toggle('hamburger--active');
			nav.classList.toggle('header__nav--active');
			header.classList.toggle('header--menu');
		});

	};
	hamburger('.hamburger', '.header__nav', '.header');

//----------------------FIXED-HEADER-----------------------
	const headerFixed = (headerFixed, headerActive) => {
		const header =  document.querySelector(headerFixed),
					active = headerActive.replace(/\./, '');

		if (header) {
			if (active) {
				window.addEventListener('scroll', function() {
					const top = pageYOffset;
					
					if (top >= 90) {
						header.classList.add(active);
					} else {
						header.classList.remove(active);
					}

				});
			}
		}

	};
	headerFixed('.header', '.header--active');
	headerFixed('.basket', '.basket--active');
	headerFixed('.headerpage', '.headerpage--active');

//----------------------TABS-JS----------------------
	const tabs = (headerSelector, tabSelector, contentSelector, activeClass) => {
		const header = document.querySelector(headerSelector),
					tab = document.querySelectorAll(tabSelector),
					content = document.querySelectorAll(contentSelector);

		if (content) {
			if (tab) {
				if (header) {
					function hideTabContent() {
						content.forEach(item => {
							item.style.display = "none";
						});

						tab.forEach(item => {
							item.classList.remove(activeClass);
						});
					}

					function showTabContent(i = 0) {
						content[i].style.display = "block";
						tab[i].classList.add(activeClass);
					}


				hideTabContent();
				showTabContent();

				header.addEventListener('click', (e) => {
					const target = e.target;
					if (target && 
						(target.classList.contains(tabSelector.replace(/\./, '')) || 
						target.parentNode.classList.contains(tabSelector.replace(/\./, '')))) {
						tab.forEach((item, i) => {
							if (target == item || target.parentNode == item) {
								hideTabContent();
								showTabContent(i);
							}
						});
					}
				});
				}
			}
		}
	};
	tabs('.tabs', '.tabs__item', '.tabs__wrap', 'tabs--active');
	tabs('.headerpage__menu', '.headerpage__item', '.headerpage__wrap', 'headerpage__item--active');


//----------------------MENU_ACTIVE_LINK_JS----------------------
	function shineLinks(id){
		try{
			let el = document.getElementById(id).getElementsByTagName('a');
			let url = document.location.href;//палим текущий урл
			for(let i=0;i<el.length; i++){
				if (url==el[i].href){
					el[i].className = 'active_menu';//если урл==текущий, добавляем класс
				};
			};
		}catch(e){}
	};
	shineLinks('menu-header_menu');

});
	