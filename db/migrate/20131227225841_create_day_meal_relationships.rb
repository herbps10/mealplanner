class CreateDayMealRelationships < ActiveRecord::Migration
  def change
    create_table :day_meal_relationships do |t|
      t.belongs_to :day
      t.belongs_to :meal
      t.timestamps
    end
  end
end
