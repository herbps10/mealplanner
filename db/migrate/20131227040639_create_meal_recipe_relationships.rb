class CreateMealRecipeRelationships < ActiveRecord::Migration
  def change
    create_table :meal_recipe_relationships do |t|
      t.references :meal
      t.references :recipe
      t.timestamps
    end
  end
end
