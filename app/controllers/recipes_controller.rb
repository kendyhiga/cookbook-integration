class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    uri = URI('http://localhost:3000/api/v1/recipes')
    @response = Net::HTTP.post_form(uri, 'title' => 'Bala',
                                         'difficulty' => 'Fácil',
                                         'recipe_type_id' => '1',
                                         'cuisine' => '1',
                                         'cook_time' => '50',
                                         'ingredients' => 'muitos',
                                         'cook_method' => 'cozinhe tudo'
                                         )
    byebug
    redirect_to new_recipe_path
  end

  def show
    uri = URI('http://localhost:3000/api/v1/recipes/1')
    @example = Net::HTTP.get(uri)
  end
end