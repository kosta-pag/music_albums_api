# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Album.create([
               { title: 'Thriller', artist: 'Michael Jackson', released_in: 1982 },
               { title: 'Back in Black', artist: 'AC/DC', released_in: 1980 },
               { title: 'The Dark Side of the Moon', artist: 'Pink Floyd', released_in: 1973 }
             ])
