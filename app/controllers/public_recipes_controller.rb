class PublicController < ApplicationController
  def index
    @pulic = Recipe.where(public: true)
  end
end