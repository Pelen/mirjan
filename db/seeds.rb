# -*- coding: utf-8 -*-
puts "="*16, "Books", "="*16

books = [
  { author: "Henryk Sienkiewicz", title: "Potop", isbn: "978-83-702-3368-6", price: "12000" },
  { author: "Henryk Sienkiewicz", title: "Quo Vadis", isbn: "978-83-702-3368-6", price: "12000" },
  { author: "Adam Mickiewicz", title: "Pan Tadeusz", isbn: "978-83-702-3368-6", price: "12000" },
  { author: "Bruce A. Tate", title: "Rails Wprowadzenie", isbn: "9788324622108", price: "3000" },
  { author: "J.K. Rowling", title: "Harry Potter i Komnata Tajemnic", isbn: "978-83-702-3368-6", price: "12000" },
  { author: "Albert Uderzo", title: "Asteriks 26. Odyseja Asteriksa", isbn: "978-83-237-4754-3", price: "12000" },
  { author: "James Patterson", title: "Alex Cross 9. Wielki zły wilk", isbn: "83-7359-209-1", price: "12000" },
  { author: "Vendela Vida", title: "A teraz możesz już iść", isbn: "83-7301-493-4", price: "12000" },
  { author: "Douglas Noel Adams", title: "Autostopem przez Galaktykę", isbn: "83-7359-201-6", price: "12000" },
  { author: "Natalka Śniadanko", title: "Ahatanhel", isbn: "978-83-7536-029-5", price: "12000" },
  { author: "Aleksandra Marinina", title: "Anastazja Kamieńska 2. Gra na cudzym boisku", isbn: "83-7414-105-0", price: "3000" },
  { author: "Angie Sage", title: "Araminta Spookie 4. Wstrętny wampirek", isbn: "978-83-60010-67-9", price: "12000" },
  { author: "Eoin Colfer", title: "Artemis Fowl 5. Zaginiona kolonia", isbn: "978-83-7414-344-8", price: "12000" },
  { author: "Mike Spick", title: "Asy lotnictwa bombowego Luftwaffe", isbn: "83-7359-209-1", price: "12000" },
  { author: "Paulo Coelho", title: "Alchemik", isbn: "978-83-89933-43-0", price: "12000" },
  { author: "Umberto Eco", title: "Apokaliptycy i dostosowani", isbn: "978-83-7414-772-9", price: "12000" },
  { author: "Winfried Georg Sebald", title: "Austerlitz", isbn: "978-83-7414-341-7", price: "12000" },
  { author: "Sue Townsend", title: "Adrian Mole. Na manowcach", isbn: "978-83-7414-253-3", price: "3000" },
  { author: "Matthew Woodring Stover", title: "Akty Caine'a 3. Caine Czarny Nóż", isbn: "978-83-7480-167-6", price: "12000" },
  { author: "Olivier Todd", title: "Albert Camus. Biografia", isbn: "978-83-237-4754-3", price: "12000" },
  { author: " Federico Moccia", title: "Amore 14", isbn: "978-83-7758-458-3", price: "12000" },
]

books.each do |attr|
  puts "#{attr[:author]}, #{attr[:title]}, #{attr[:isbn]}, #{attr[:price]}"
  Book.find_or_create_by(author: attr[:author], title: attr[:title], isbn: attr[:isbn], price: attr[:price])
end