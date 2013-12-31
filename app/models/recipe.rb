class Recipe < ActiveRecord::Base
  include ColorizeModule

  validates :title, presence: true

  has_many :ingredients
  has_many :meal_recipe_relationships
  has_many :meals, :through => :meal_recipe_relationships

  accepts_nested_attributes_for :ingredients,
    allow_destroy: true,
    reject_if: lambda { |attributes| attributes['description'].blank? }

  has_attached_file :photo, :styles => { :medium => "300x300", :thumb => "100x100" }

  def batch_ingredients=(text)
    self.ingredients_attributes = text.split("\n").map { |t| { :description => t } }
  end

  def batch_ingredients
    return self.ingredients.map { |i| i.description }.join("\n")
  end

  def colorized_calories
    return if calories.nil?

    return colorize(calories, {
      :danger => 500,
      :warning => 250
    })
  end

  def colorized_carbs
    return if carbs.nil?

    return colorize(carbs, {
      :danger => 40,
      :warning => 20
    })
  end

  def colorized_fats
    return if carbs.nil?

    return colorize(fats, {
      :danger => 20,
      :warning => 10
    })
  end
  
  def colorized_protein
    return if protein.nil?

    return colorize(protein, {
      :success => 20,
      :warning => 10
    })
  end

end
