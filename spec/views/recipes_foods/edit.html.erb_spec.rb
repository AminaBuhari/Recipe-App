require 'rails_helper'

RSpec.describe 'recipes_foods/edit', type: :view do
  before(:each) do
    @recipes_food = assign(:recipes_food, RecipesFood.create!)
  end

  it 'renders the edit recipes_food form' do
    render

    assert_select 'form[action=?][method=?]', recipes_food_path(@recipes_food), 'post' do
    end
  end
end
