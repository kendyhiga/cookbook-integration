class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    byebug
    @recipe.save
  end
end