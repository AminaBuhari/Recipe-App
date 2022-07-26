class RecipeFood < ActiveRecord::Base
  belong_to :recipe
  belong_to :food
  
end