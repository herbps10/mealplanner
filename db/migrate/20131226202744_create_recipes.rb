class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.float :calories
      t.float :carbs
      t.float :fats
      t.float :protein
      t.float :servings
      t.string :url
      t.text :notes
      t.text :directions

      t.attachment :photo

      t.timestamps
    end
  end
end
