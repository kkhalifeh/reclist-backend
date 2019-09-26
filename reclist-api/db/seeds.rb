# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

data = ActiveSupport::JSON.decode(File.read("db/sample.json"))
data.each do |attributes|
  Location.create!(
    city: attributes['city'],
    country: attributes['country'],
    latitude: attributes['lat'],
    longitude: attributes['lng'],
    image: attributes['image']
  )
end