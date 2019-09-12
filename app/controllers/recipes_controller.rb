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

    if resp.status == 201
      @recipe = JSON.parse(resp.body)
      redirect_to recipe_path(@recipe['id'])
    else
      flash[:warning] = resp.body
      render :new
    end

  end

  def show
    url = "http://localhost:3000/api/v1/recipes/#{params[:id]}"

    resp = Faraday.get(url)
    @recipe = JSON.parse(resp.body)
  end

  def recipe_params
    params.permit(:title, :recipe_type_id, :cuisine_id,
                  :difficulty, :cook_time, :ingredients,
                  :cook_method, :image)
  end
end
