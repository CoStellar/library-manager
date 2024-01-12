# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(
  email: 'admin@biblioteka.com',
  password: 'Admin123',
  username: 'Admin',
  first_name: 'Użytkownik',
  last_name: 'Admin',
  approved: true,
  role: 2  # Admin
)

User.create(
  email: 'bibliotekarz@biblioteka.com',
  password: 'Bibliotekarz123',
  username: 'Bibliotekarz',
  first_name: 'Użytkownik',
  last_name: 'Bibliotekarz',
  approved: true,
  role: 1  # Bibliotekarz
)

User.create(
  email: 'użytkownik@biblioteka.com',
  password: 'Użytkownik123',
  username: 'Użytkownik',
  first_name: 'Użytkownik',
  last_name: 'Zwyczajny',
  approved: true,
  role: 0  # Zwykły użytkownik
)

Book.create(
  title: 'Pan Lodowego Ogrodu - księga I',
  author: 'Jarosław Grzędowicz',
  genre: 'fantasy',
  isbn: '9788379644964',
  description: 'Władza uzależnia, szczególnie w połączeniu z magią. Wyobraź sobie, że stałeś się bogiem – ktoś miałby cię tego stanu pozbawić?
  Nie liczą się sentymenty, dobro wspólne, misja i przyjaźń.
  Vuko Drakkainen samotnie rusza na ratunek ekspedycji naukowej badającej człekopodobną cywilizację planety Midgaard. Pod żadnym pozorem nie może ingerować w rozwój nieznanej kultury. Trafia na zły czas. Planeta powitała go mgłą i śmiercią. Dalej jest tylko gorzej. Trwa wojna bogów. Giną śmiertelnicy. Odwieczne reguły zostały złamane.
  Księga pierwsza kultowego cyklu, która w jednym roku zgarnęła Zajdla, Nautilusa, Sfinksa i Śląkfę.'
)
Book.create(
  title: 'Gra Endera',
  author: 'Orson Scott Card',
  genre: 'science fiction',
  isbn: '9788378396321',
  description: 'Wobec śmiertelnego zagrożenia nadciągającego z kosmosu Ziemia przygotowuje swoją broń ostatniej nadziei. Jest nią chłopiec, w którym odkryto zalążki niezwykłego geniuszu wojskowego. Czas nagli, a przyszłość dwóch cywilizacji spoczywa w rękach dziecka....'
)