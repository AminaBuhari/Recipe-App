class PublicsController < ApplicationController

  def index
    @user = current_user
    @recipes = Recipe.where(user_id: current_user)
  end

  def all
    @recipes = Recipe.where(public: true)
  end
end
