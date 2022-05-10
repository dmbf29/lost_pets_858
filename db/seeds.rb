puts "Cleaning the DB..."
Pet.destroy_all

puts "Creating pets..."
30.times do
  Pet.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10),
    species: Pet::SPECIES.sample,
    status: Pet.statuses.keys.sample
  )
end
puts "...created #{Pet.count} pets."
