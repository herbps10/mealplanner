require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "should not save recipe without title" do
    recipe = Recipe.new
    assert recipe.save == false
  end

  test "should accept batch ingredients" do
    recipe = Recipe.new
    recipe.title = "Testing"
    recipe.batch_ingredients = "Test 1\nTest2"

    recipe.save

    assert_equal recipe.ingredients.length, 2
  end
end
