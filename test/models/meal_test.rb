require 'test_helper'

class MealTest < ActiveSupport::TestCase
    test "should save recipes" do
        meal = Meal.new
        meal.recipe_ids = [1]

        meal.save

        assert_equal meal.recipes.length, 1
    end
end
