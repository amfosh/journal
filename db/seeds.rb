# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def seed_users
    user_id = 0
    10.times do 
      User.create(
        username: "test#{user_id}",
        email: "test#{user_id}@test.com",
        password: '123456',
        password_confirmation: '123456'
      )
      user_id = user_id + 1
    end
  end
  
  
  def seed_categories
    small_space_gardening = ['Balcony Gardening', 'Container Gardening', 'Tiny Garden', 'Pocket Garden']
    vegetable = ['Vegetable', 'Tomato', 'Green Beans', 'Veggie']
    flowers = ['Flowers']
    pests = ['Pests', 'Aphids']
  
    small_space_gardening.each do |name|
      Category.create(branch: 'small space gardening', name: name)
    end
  
    vegetable.each do |name|
      Category.create(branch: 'vegetable', name: name)
    end
  
    flowers.each do |name|
      Category.create(branch: 'flowers', name: name)
    end

    pests.each do |name|
        Category.create(branch: 'pests', name: name)
      end
  end
  
  def seed_entries
    entries = Category.all
  
    entries.each do |category|
      5.times do
        Entry.create(
          title: Faker::Lorem.sentences[0], 
          content: Faker::Lorem.sentences[0], 
          user_id: rand(1..9), 
          category_id: category.id
        )
      end
    end
  end
  
  seed_users
  seed_categories
  seed_entries
  