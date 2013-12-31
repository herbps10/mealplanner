module DaysHelper
  def recipe_list(meal)
    return meal.recipes.map { |r| link_to r.title, recipe_path(r.id) }.join(', ').html_safe
  end
end
