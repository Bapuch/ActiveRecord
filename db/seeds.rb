# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
=begin
i = 1
5.times do
  #user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  #article = Article.create!(title: Faker::Community.characters, content: Faker::Community.quotes, user_id: i)
  category = Category.create!(name: Faker::NewGirl.character)
  i += 1
end

Article.all.each do |a|
    a.category = Category.first
    a.save
end

15.times do
    user = rand(11) + 1
    article = rand(11) + 1
    comment = Comment.create!(content: Faker::NewGirl.quote, user_id: user, article_id: article)
end
=end

15.times do
    user = rand(User.all.count) + 1
    article = rand(Article.all.count) + 1
    like = Like.create!(user_id: user, article_id: article)
end
