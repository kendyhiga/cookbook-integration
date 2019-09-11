class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  


  # net/http attempt
  # def create
  #   @recipe = Recipe.new(params[:recipe]['title'],
  #                        params[:recipe]['recipe_type_id'],
  #                        params[:recipe]['cuisine_id'],
  #                        params[:recipe]['difficulty'],
  #                        params[:recipe]['cook_time'],
  #                        params[:recipe]['ingredients'],
  #                        params[:recipe]['cook_method'],
  #                        params[:recipe]['user_id'])
  #   uri = URI('http://localhost:3000/api/v1/recipes')
  #   byebug
  #   # json = { 'recipe' => @recipe.instance_values }
  #   # json = { recipe: @recipe.instance_values.symbolize_keys }
  #   # json = @recipe.to_json
  #   # json = {'recipe' => @recipe.instance_values}.to_json

  #   json = @recipe.instance_values
  #   json = { 'recipe' => json }
  #   @response = Net::HTTP.post_form(uri, json)
  #   redirect_to new_recipe_path
  # end

  # def show
  #   uri = URI('http://localhost:3000/api/v1/recipes/1')
  #   @example = Net::HTTP.get(uri)
  # end

  # private

  # def recipe_params
     
  # end
end
