class Meal < ActiveRecord::Base
  include ColorizeModule

  has_many :day_meal_relationships
  has_many :days, :through => :day_meal_relationships
  has_many :meal_recipe_relationships
  has_many :recipes, :through => :meal_recipe_relationships
  validates_inclusion_of :meal_type, :in => %w(Breakfast Lunch Dinner Snack)

  def total(item)
    total = recipes.map { |r| r[item] }.inject(:+)

    # If there is no decimal, then chop off the ".0" part
    return total.round if total == total.round
    return total.round(2) # Otherwise round to two decimal places
  end

  def colorized_calories
    return if self.total('calories').nil?

    return colorize(self.total('calories'), {
      :danger => 500,
      :warning => 250
    })
  end

  def colorized_carbs
    return if self.total('carbs').nil?

    return colorize(self.total('carbs'), {
      :danger => 40,
      :warning => 20
    })
  end

  def colorized_fats
    return if self.total('carbs').nil?

    return colorize(self.total('fats'), {
      :danger => 20,
      :warning => 10
    })
  end
  
  def colorized_protein
    return if self.total('protein').nil?

    return colorize(self.total('protein'), {
      :success => 20,
      :warning => 10
    })
  end
end
