class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe]['title'],
                         params[:recipe]['recipe_type_id'],
                         params[:recipe]['cuisine_id'],
                         params[:recipe]['difficulty'],
                         params[:recipe]['cook_time'],
                         params[:recipe]['ingredients'],
                         params[:recipe]['cook_method'],
                         params[:recipe]['user_id'])

    url = 'http://localhost:3000/api/v1/recipes'

    resp = Faraday.post(url) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.body = {recipe: @recipe.instance_values }.to_json
    end
  end
end
