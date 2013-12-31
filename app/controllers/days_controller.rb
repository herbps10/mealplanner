class DaysController < ApplicationController
  def index
    @days = Day.all
    @meals = Meal.all(:order => "FIELD(meal_type, 'Breakfast', 'Lunch', 'Snack', 'Dinner')")
  end

  def update
    @day = Day.find(params[:id])

    meal_ids = params['day']['meal_ids']
    meal_ids = [] if meal_ids.nil?
    meal_ids = [meal_ids] if false == meal_ids.kind_of?(Array)

    @day.meals = Meal.find(meal_ids)

    if @day.update(day_params)
      redirect_to days_path
    else
      render text: "couldn't update"
    end
  end

  private
    def day_params
      params.require(:day).permit(:id, :title)
    end
end
