class IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]
  def index
    @ingredients = Ingredient.all
  end

  def create
    @ingredient = Ingredient.create ingredient_params
    redirect_to ingredient_path(@ingredient)
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def show
  end

  def update
    @ingredient.update ingredient_params
    redirect_to ingredient_path(ingredient)
  end

  def destroy
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find params[:id]
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :allergen)
  end
end
