puts "Clearing db"
Game.destroy_all
puts "Database Cleared"

puts "creating the game!"
50.times do
    Game.create(
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform,
    price: rand(0..60))
end
puts "Games are ready for listing!"
# Add a console message so we can see output when the seed file runs
