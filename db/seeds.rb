AdminUser.destroy_all
Horse.destroy_all
Breed.destroy_all

NUMBER_OF_BREEDS = 4
HORSES_PER_BREED = 4

NUMBER_OF_BREEDS.times do
  breed = Breed.find_or_create_by(name: Faker::Creature::Horse.unique.breed)

  HORSES_PER_BREED.times do
    horse = breed.horses.find_or_create_by(
      name: Faker::Creature::Horse.unique.name,
      age: rand(3..348),
      top_speed: 3.1415926 * rand(20..56),
      number_of_legs: rand(1..14)
    )
  end
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Horse.count} Horses."
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')
end
