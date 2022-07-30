class ShoppingListsController < ApplicationController
    def index
      @recipe = Recipe.find(params[:recipe_id])
      @Ingredient = Ingredient.find(params[:recipe_id])
      @total_amount = add(@recipe.ingredients)
    end
  
    def add(arr)
      price = 0
      arr.each do |ar|
        price += (ar.quantity * ar.food.price)
      end
      price
    end
  end