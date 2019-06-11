class RecipeController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.create recipe_params
    redirect_to recipe_path(@recipe)
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def show
  end

  def update
    @recipe.update recipe_params
    redirect_to recipe_path(@recipe)
  end

  def destroy
  end

  private

  def find_recipe
    @recipe = Recipe.find params[:id]
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
