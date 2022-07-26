class Food < ActiveRecord::Base
  has_many :recipe_foods
end