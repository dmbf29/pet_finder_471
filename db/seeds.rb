Pet.destroy_all

puts "Creating pets..."
50.times do
  Pet.create!(
    name: Faker::Food.sushi,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..20),
    address: Faker::WorldCup.team,
    dead: [true, false, false, false].sample
  )
end
puts "...Created #{Pet.count} pets"
