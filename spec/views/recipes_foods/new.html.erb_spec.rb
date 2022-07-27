require 'rails_helper'

RSpec.describe 'recipes_foods/new', type: :view do
  before(:each) do
    assign(:recipes_food, RecipesFood.new)
  end

  it 'renders new recipes_food form' do
    render

    assert_select 'form[action=?][method=?]', recipes_foods_path, 'post' do
    end
  end
end
