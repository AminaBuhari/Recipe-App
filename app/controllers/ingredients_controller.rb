class IngredientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_edit, only: %i[show edit update destroy]

  # GET /ingredients/new
  def new
    @user = current_user
    @foods = current_user.foods.all
    @recipe = current_recipe
    @ingredient = Ingredient.new
  end

  # POST /ingredients
  def create
    food = Food.find(params[:food_id])
    @ingredient = current_recipe.add_ingredient!(food, ingredient_params[:quantity])
    respond_to do |format|
      if @ingredient.save
        format.html do
          redirect_to user_recipe_path(current_user, current_recipe.id),
                      notice: 'Food ingredient was successfully added.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    set_edit

    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html do
          redirect_to user_recipe_path(current_user, current_recipe.id), notice: 'Ingredient was successfully updated.'
        end
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  def destroy
    current_ingredient.destroy!

    respond_to do |format|
      format.html do
        redirect_to user_recipe_path(current_user, current_recipe.id), notice: 'Ingredient was successfully removed.'
      end
    end
  end

  # GET /ingredients/1/edit
  def edit
    set_edit
  end

  private

  def current_ingredient
    Ingredient.find(params[:id])
  end

  def set_edit
    @food = Food.find(params[:id])
    @ingredient = Ingredient.find(params[:id])
    @recipe = Recipe.find(current_ingredient.recipe_id)
  end

  def current_recipe
    Recipe.find(params[:recipe_id])
  end

  # Only allow a list of trusted parameters through.
  def ingredient_params
    params.require(:ingredient).permit(:quantity)
  end
end
