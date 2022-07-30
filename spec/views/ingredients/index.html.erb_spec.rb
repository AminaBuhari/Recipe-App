require 'rails_helper'

RSpec.describe 'ingredients/index', type: :view do
  before(:each) do
    assign(:ingredients, [
             Ingredient.create!,
             Ingredient.create!
           ])
  end

  it 'renders a list of ingredients' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
