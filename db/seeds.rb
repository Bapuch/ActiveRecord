require 'faker'

i = 1
5.times do
  # Fill the users table
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
  # Fill the articles table
  article = Article.create!(title: Faker::Community.characters, content: Faker::Community.quotes, user_id: i)
  # Fill the categories table
  category = Category.create!(name: Faker::NewGirl.character)
  i += 1
end

# This will add to all elements in the Artcile table a category based on the first category from the Category table
Article.all.each do |a|
  a.category = Category.first
  a.save
end

# Fill the users table, with a random existing artcile and a random exiting user
15.times do
  user = rand(11) + 1
  article = rand(11) + 1
  comment = Comment.create!(content: Faker::NewGirl.quote, user_id: user, article_id: article)
end

# Fill the users table, with a random existing artcile and a random exiting user
15.times do
  user = rand(User.all.count) + 1
  article = rand(Article.all.count) + 1
  like = Like.create!(user_id: user, article_id: article)
end
