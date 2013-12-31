class DayMealRelationshipsController < ApplicationController
  def create
    @relationship = DayMealRelationship.new(relationship_params)
    
    if @relationship.save
      redirect_to meals_path
    else
      render text: 'Error'
    end
  end

  private
    def relationship_params
      params.require(:day_meal_relationship).permit(:id, :meal_id, :day_id, :meal_ids)
    end
end
