# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


return if Movie.any?


require 'csv'
movies = CSV.read('db/movies.csv', headers: true).map(&:to_h)
           .each { |attrs| attrs['release_date'] = Date.strptime(attrs['release_date'], '%m/%d/%Y') }
           .map { |attrs| Movie.new(attrs) }

Movie.import(movies)

headers = %w[imdb_id popularity budget revenue title runtime release_date release_year]

items = CSV.read('db/original.csv', headers: true).map(&:to_h)
  .map { |item| item.slice(*headers) }
  .each { |attrs| attrs['release_date'] = attrs['release_date'].gsub(%r/\/\d{2}$/, "/#{attrs['release_year']}") }
  .map { |attrs| attrs.except('release_year') }
CSV.open('db/movies.csv', 'wb', headers: items.first.keys, write_headers: true) { |csv| items.each { |x| csv << x } }
