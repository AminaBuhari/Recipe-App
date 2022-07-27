require 'rails_helper'

RSpec.describe 'recipes_foods/show', type: :view do
  before(:each) do
    @recipes_food = assign(:recipes_food, RecipesFood.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
