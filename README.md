##Projekt MirJan

[![Build Status](https://travis-ci.org/Pelen/mirjan.svg?branch=master)](https://travis-ci.org/Pelen/mirjan)

##Autorzy

* Mirosław Podgórski
* Jan Pieniążczak

Rozszerzenie aplikacji [My_Books](https://github.com/rails4/my_books) o kilka dodatków oraz testy, łącznie z wdrożeniem jej na ShellyCloud.

Aplikacja umożliwia umieszczanie książek na stronie, łącznie z okładkami, które są umieszczane są na Cloudinary.

## URUCHOMIENIE PROJEKTU

Wykonujemy:

```sh
git clone git@github.com:Pelen/mirjan.git

bundle install

rails s
```

Aby uruchomić testy wykonujemy:

```sh
bundle exec rspec
```

## WYKONANO

* zmiana wyglądu za pomocą bootstrapa przy urzyciu <b>generatora</b> oraz gemu bootstrap_form do tworzenia formularzy

* jeśli przeglądarka ma <b>wyłączony javascript</b>, wyświetlana jest <b>paginacja</b> stworzona za pomocą gemu will_paginate. W przeciwnym wypadku przechodzenie między podstronami zachodzi za pomocą infinity scrolling Dostosowanie wyglądu paginacji za pomocą gemu bootstrap-will_paginate

* dodanie <b>infinity scrolling</b> zgodnie z przykładem dostępnym [tutaj](https://gist.github.com/qbraksa/5606187)

* <b>responsywność</b> - dzięki tutorialowi który można znaleźć [tutaj](http://css-tricks.com/responsive-data-tables/)

* wyszukiwarka przeszukująca tytuły książek - dzięki tutorialowi który można znaleźć [tutaj](http://www.jorgecoca.com/buils-search-form-ruby-rails)

* wgrywanie obrazków na <b>cludinary</b>.

* autentykacja, za pomogą gemu <b>Devise</b>

* wdrożenie aplikacji na <b>ShellyCloud</b>


## EXTRA GEMS

* gem 'bootstrap_form'

* gem 'sass-rails'

* gem 'bootstrap-sass'

* gem 'bootstrap-generators'

* gem 'will_paginate'

* gem 'bootstrap-will_paginate'

* gem 'cloudinary'

* gem 'devise'

* gem 'capybara'

* gem 'shelly-dependencies'

* gem 'factory_girl_rails'

* gem 'rspec-rails', '~> 3.0.0.beta'

* gem 'thin'

## Cloudinary

Aby dodać obsługę obrazków na Heroku za pomocą zewnętrznego serwera Cloudinary:

Zakładamy konto na www.cloudinary.com

Dopisujemy do *Gemfile*:

```ruby
gem 'cloudinary'
```

Wykonujemy:

```sh
bundle install
```

W katalogu *config* tworzymy plik *cloudiniary.yml* i uzupełniamy danymi ze strony cloudinary jak niżej:

```yml

development:
   cloud_name: "my-books-images"
   api_key: "157645628133455"
   api_secret: "12qf5ycBU1zwD2RQ3Fpn39sb7Md"

production:
   cloud_name: "my-books-images"
   api_key: "157645628133455"
   api_secret: "12qf5ycBU1zwD2RQ3Fpn39sb7Md"

```

W pliku *app/uploaders/cover_uploader.rb* dodajemy:

```ruby
include Cloudinary::CarrierWave
```

## LINK

Link do aplikacji wdrożonej na ShellyCloud http://mirjan.shellyapp.com

