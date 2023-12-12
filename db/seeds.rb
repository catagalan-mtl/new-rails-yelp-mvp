categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "deleting past restaurants..."
Restaurant.delete_all

puts "creating 10 restaurants..."
10.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: categories.sample
    )
  restaurant.save!
end

puts "Finished!!!"
