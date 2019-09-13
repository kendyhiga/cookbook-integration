class Recipe
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_reader :title, :recipe_type_id, :cuisine_id, :difficulty,
              :cook_time, :ingredients, :cook_method, :user_id,
              :status

  def initialize(title: nil, recipe_type_id: nil, cuisine_id: nil,
                 difficulty: nil, cook_time: nil, ingredients: nil,
                 cook_method: nil, user_id: nil, status: nil,
                 created_at: nil, updated_at: nil, id: nil)
    @title = title
    @recipe_type_id = recipe_type_id
    @cuisine_id = cuisine_id
    @difficulty = difficulty
    @cook_time = cook_time
    @ingredients = ingredients
    @cook_method = cook_method
    @user_id = user_id
  end

  def persisted?
    false
  end

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type_id, :cuisine_id,
                                   :difficulty, :cook_time, :ingredients,
                                   :cook_method, :user_id)
  end
end