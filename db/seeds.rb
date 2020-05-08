# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LANGUAGES = ["French", "Spanish", "Italian", "English", "German", "Japanese", "Arabic", " Mandarin"]
LEVELS = ["Beginner", "Intermediate", "Advanced"]
TIME = ["30 minutes", "1 hour", "2 hours", "> 2 hours"]

user = User.create!(email: "tester@test.com", password: "123123")

user_test = User.create!(email: "test@test.com", password: "123123")

10.times do
  Lesson.create!(language: LANGUAGES.sample, price: rand(5..25), level: LEVELS.sample, time: TIME.sample, user: user, description: "This is a wonderful lesson")
end

Lesson.create!(language: 'French', price: 25, level: "Advanced", time: TIME.sample, user: user_test, description: "This is a test")
