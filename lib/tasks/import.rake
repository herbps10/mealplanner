desc "Import"
task import: [:environment] do
  # get the mysql database config info
  config = Rails.configuration.database_configuration
  host     = config[Rails.env]['host']
  username = config[Rails.env]['username']
  password = config[Rails.env]['password']

  # connect to mysql database containing recipes
  mysql = Mysql.new(host, username, password, 'recipes')

  recipes_query = mysql.query("SELECT * FROM recipes")

  recipes_query.each_hash do |recipe|
    ingredients_query = mysql.query("SELECT * FROM ingredients WHERE recipe_id = #{recipe['id']}")
    
    ingredients = []

    ingredients_query.each_hash do |ingredient|
      ingredients.push Ingredient.new({ description: ingredient['name']})
    end

    r = Recipe.new({
      title: recipe['title'],
      servings: recipe['serves'],
      url: recipe['url'],
      ingredients: ingredients,
      directions: recipe['directions']
    })

    photo_path = '/home/herb/recipes/images/' + File.basename(recipe['image'])

    r.photo = File.new(photo_path) if File.exists?(photo_path)

    r.save
    
  end
end
