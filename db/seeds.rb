# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# faire appel à la gem faker permettant de creer 60 faux auteurs qui contienen le firts_name, last_name et email
require faker
60.times do
    Author.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email
      password = Faker::Internet.password(min_length: 6)
      
      Author.create(first_name: first_name, last_name: last_name, email: email, password: password)
    )
end
  