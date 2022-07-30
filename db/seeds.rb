# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(name: "test", email: "just@test.com", role: "admin", password: "123456", confirmed_at: Time.now)
user2 = User.new(name: "Augusto", email: "have@test.com", password: "123456", confirmed_at: Time.now)
user3 = User.new(name: "test2", email: "adrine@test.com", password: "123456", confirmed_at: Time.now)
user4 = User.new(name: "test3", email: "muelo@text.com", password: "123456", confirmed_at: Time.now)
user.skip_confirmation!
user2.skip_confirmation!
user3.skip_confirmation!
user4.skip_confirmation!
user.save!
user2.save!
user3.save!
user4.save!

recipe = Recipe.create(name: "Tasty dish", preparation_time: 1.1, cooking_time: 2.1, description: "Very tasty dish description", user_id: user.id, public: true)
recipe2 = Recipe.create(name: "Normal dish", preparation_time: 1.2, cooking_time: 3.1, description: "Very normal dish description", user_id: user2.id, public: true)
recipe2 = Recipe.create(name: "Awesome dish", preparation_time: 1.5, cooking_time: 4.1, description: "Very awesome dish description", user_id: user2.id, public: true)
recipe3 = Recipe.create(name: "Very dish", preparation_time: 1.6, cooking_time: 5.1, description: "Very very dish description", user_id: user3.id, public: true)

food = Food.create(name: "Carrot", measurement_unit: "kgs", price: 2.5, quantity: 1000, user_id: user.id)
food2 = Food.create(name: "Apple", measurement_unit: "g", price: 3.2, quantity: 200, user_id: user2.id)
food3 = Food.create(name: "Pepper", measurement_unit: "kgs", price: 2.1, quantity: 300, user_id: user2.id)
food4 = Food.create(name: "Water", measurement_unit: "Lt", price: 1.0, quantity: 10, user_id: user3.id)

recipeFood = RecipesFood.create(quantity: 2, recipe_id: recipe.id, food_id: food.id)
recipeFood2 = RecipesFood.create(quantity: 3, recipe_id: recipe.id, food_id: food2.id)
recipeFood3 = RecipesFood.create(quantity: 1, recipe_id: recipe2.id, food_id: food2.id)
recipeFood4 = RecipesFood.create(quantity: 5, recipe_id: recipe3.id, food_id: food3.id)
recipeFood5 = RecipesFood.create(quantity: 6, recipe_id: recipe3.id, food_id: food4.id)