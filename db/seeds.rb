require 'faker'

puts 'Detroy all restaurants...'
Restaurant.destroy_all

puts 'Create restaurants...'
5.times do
  new_restaurant = Restaurant.new(name: Faker::Fantasy::Tolkien.location, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, category: Restaurant::CATEGORY.sample)
  new_restaurant.save
end

puts 'Finish!'
