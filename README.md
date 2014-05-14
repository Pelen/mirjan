==Projekt MirJan

[![Build Status](https://travis-ci.org/Pelen/mirjan.svg?branch=master)](https://travis-ci.org/Pelen/mirjan)

==Autorzy

* Mirosław Podgórski
* Jan Pieniążczak


Rozszerzenie aplikacji My_Books[https://github.com/rails4/my_books] o kilka dodatków łącznie z wdrożeniem jej na Heroku.

Aplikacja umożliwia umieszczanie książek na stronie, łącznie z okładkami, które są umieszczane są na dropboxie.


== WYKONANO

* zmiana wyglądu za pomocą bootstrapa przy urzyciu <b>generatora</b> oraz gemu bootstrap_form do tworzenia formularzy

* jeśli przeglądarka ma <b>wyłączony javascript</b>, wyświetlana jest <b>paginacja</b> stworzona za pomocą gemu will_paginate. W przeciwnym wypadku przechodzenie między podstronami zachodzi za pomocą infinity scrolling Dostosowanie wyglądu paginacji za pomocą gemu bootstrap-will_paginate

* dodanie <b>infinity scrolling</b> zgodnie z przykładem dostępnym tutaj[https://gist.github.com/qbraksa/5606187]

* <b>responsywność</b> - dzięki tutorialowi który można znaleźć tutaj[http://css-tricks.com/responsive-data-tables/]

* wyszukiwarka przeszukująca tytuły książek - dzięki tutorialowi który można znaleźć tutaj[http://www.jorgecoca.com/buils-search-form-ruby-rails]

* wgrywanie obrazków na <b>dropboxa</b>, aby można było wdrożyć aplikacje na Heroku

* wdrożenie aplikacji na Heroku


== EXTRA GEMS

* gem 'bootstrap_form'

* gem 'sass-rails'

* gem 'bootstrap-sass'

* gem 'bootstrap-generators'

* gem 'carrierwave-dropbox'

* gem 'will_paginate'

* gem 'bootstrap-will_paginate'


== LINK

Link do aplikacji wdrożonej na Heroku http://pelen.herokuapp.com

