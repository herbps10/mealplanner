class MealRecipeRelationship < ActiveRecord::Base
  belongs_to :meal
  belongs_to :recipe
end
