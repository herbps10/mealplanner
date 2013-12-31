require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
  end

  test "should create recipe" do
    assert_difference 'Recipe.count' do
      post :create, :recipe => { :title => 'Granola' }
    end
  end
end
