require 'rails_helper'

RSpec.describe RecipesFoodsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipes_foods').to route_to('recipes_foods#index')
    end

    it 'routes to #new' do
      expect(get: '/recipes_foods/new').to route_to('recipes_foods#new')
    end

    it 'routes to #show' do
      expect(get: '/recipes_foods/1').to route_to('recipes_foods#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/recipes_foods/1/edit').to route_to('recipes_foods#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/recipes_foods').to route_to('recipes_foods#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/recipes_foods/1').to route_to('recipes_foods#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/recipes_foods/1').to route_to('recipes_foods#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/recipes_foods/1').to route_to('recipes_foods#destroy', id: '1')
    end
  end
end
