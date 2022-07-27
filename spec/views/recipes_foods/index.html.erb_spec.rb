require 'rails_helper'

RSpec.describe 'recipes_foods/index', type: :view do
  before(:each) do
    assign(:recipes_foods, [
             RecipesFood.create!,
             RecipesFood.create!
           ])
  end

  it 'renders a list of recipes_foods' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
