namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_categories
    make_media
    make_comments
    make_reviews
  end 
end
def make_users
  admin = User.create!(name:"Example User",
    email:"example@railstutorial.org",
    password: "foobar",
    password_confirmation: "foobar")
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
     email:    email,
     password: password,
     password_confirmation: password)
  end 
end


def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end 
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end



def make_reviews  
  users = User.all(limit: 4)

  10.times do
    title  = Faker::Lorem.sentence(3)
    content = Faker::Lorem.sentence(5)
    media_id=rand(1..100)
    comment_id=rand(1..100)
    users.each { |user| user.reviews.create!(title: title, content: content, media_id: media_id, comment_id: comment_id) }



    # medias = Media.find[n]
    # # comments = Comment.all

    # users.each { |user| user.reviews.create!(title: title, content: content, media_id: medias) }
    # medias.each { |media| media.reviews.create!(title: title, content: content) }
    # comments.each { |comment| comment.reviews.create!(title: title, content: content) }

  end 

end

def make_comments
  users = User.all
  5.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.comments.create!(content: content) }
  end 
end

def make_media  
  99.times do |n|
    title  = Faker::Lorem.sentence(3)
    description = Faker::Lorem.sentence(5)
    rating  = "5"
    category_id = "1"
    Media.create!(title: title, description: description, rating: rating, category_id: category_id)
  end 

  99.times do |n|
    title  = Faker::Lorem.sentence(2)
    description = Faker::Lorem.sentence(5)
    rating  = "5"
    category_id = "2"
    Media.create!(title: title, description: description, rating: rating, category_id: category_id)
  end 

  99.times do |n|
    title  = Faker::Lorem.sentence(1)
    description = Faker::Lorem.sentence(5)
    rating  = "5"
    category_id = "3"
    Media.create!(title: title, description: description, rating: rating, category_id: category_id)
  end 
end

def make_categories
 Category.create(name: 'Books')
 Category.create(name: 'TV Shows')
 Category.create(name: 'Movies')   
end