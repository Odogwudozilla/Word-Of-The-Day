# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def seed_words
 
  Wordbank.destroy_all

  puts "beginnng insertion"

  rand(20..100).times do
    Wordbank.create!(
           topic: Faker::Verb.base,
           description: Faker::Quote.famous_last_words
           )
  
  end

   puts "********* #{Wordbank.count} Words of the Day Seeded to database successfully! **************"
end

seed_words