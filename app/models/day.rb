class Day < ActiveRecord::Base
  has_many :day_meal_relationships
  has_many :meals, :through => :day_meal_relationships

  accepts_nested_attributes_for :day_meal_relationships

  def total(item)
    return self.meals.map { |m| m.total(item) == nil ? 0 : m.total(item) }.inject(:+)
  end
end
