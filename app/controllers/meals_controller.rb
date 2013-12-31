class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.recipe_ids = params["meal"]["recipe_ids"]

    if @meal.update(meal_params)
      redirect_to edit_meal_path(@meal)
    else
      render 'edit'
    end
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.recipe_ids = params["meal"]["recipe_ids"]

    if @meal.save
      redirect_to @meal
    else
      render 'new'
    end
  end

  private
    def meal_params
      params.require(:meal).permit(:id, :meal_type, :recipe_ids)
    end
end
