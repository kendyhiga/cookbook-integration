class Recipe
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :title, :recipe_type_id, :cuisine_id, :difficulty,
                :cook_time, :ingredients, :cook_method

  def persisted?
    false
  end
end