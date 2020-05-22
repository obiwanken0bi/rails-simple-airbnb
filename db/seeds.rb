require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating 5 flats..."
5.times do |i|
  flat = Flat.create!(
    name: Faker::Games::Zelda.unique.game,
    address: Faker::Address.street_address + "," + Faker::Address.city + " (" + Faker::Address.state + " - USA)",
    description: Faker::Quote.unique.yoda,
    price_per_night: (8..100).to_a.sample * 5,
    number_of_guests: (1..16).to_a.sample,
    picture_url: "https://source.unsplash.com/1600x900/?house"
  )
  puts "#{i + 1} - #{flat.name} - max #{flat.number_of_guests} guests (#{flat.price_per_night}€/night)"
end

puts "Finished!"
