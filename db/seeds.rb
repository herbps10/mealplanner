recipes = Recipe.create([
  {
    id: 1,
    title: "Macaroni and Cheese",
    calories: 260,
    carbs: 50,
    fats: 2,
    protein: 8
  },
  {
    id: 3,
    title: "Greek Yogurt",
    calories: 130,
    carbs: 22,
    fats: 0,
    protein: 11,
    photo: File.new('/home/herb/Downloads/wegmans greek yogurt.jpg')
  },
  
  {
    id: 5,
    title: "Basic Chili",
    url: "http://www.budgetbytes.com/2013/12/basic-chili/",
    ingredients: [
      Ingredient.new({ description: "2 Tbsp olive oil" }),
      Ingredient.new({ description: "1 yellow onion" }),
      Ingredient.new({ description: "2 cloves garlic" })
    ]
  }
])

meals = Meal.create([
  {
    id: 2,
    meal_type: 'Dinner',
    recipe_ids: [1]
  },
  {
    id: 3,
    meal_type: 'Breakfast',
    recipes: [
      Recipe.new({
        title: 'Fried Eggs',
        calories: 205,
        fats: 16,
        carbs: 0.869,
        protein: 14,
        servings: 1,
        ingredients: [
          Ingredient.new({
            description: 'three eggs'
          })
        ]
      }),
      Recipe.new({
        title: 'Peanut Butter Toast',
        calories: 350,
        fats: 19,
        carbs: 35,
        protein: 15,
        servings: 1,
        ingredients: [
          Ingredient.new({
            description: 'two slices whole-wheat bread'
          }),
          Ingredient.new({
            description: 'two tablespoons peanut butter'
          })
        ]
      })
    ]
  },
  {
    id: 4,
    meal_type: 'Dinner',
    recipes: [
      Recipe.new({
        title: 'Ziti with Tomato Sauce',
        calories: 580,
        fats: 7,
        carbs: 110,
        protein: 18,
        servings: 1,
        ingredients: [
          Ingredient.new({
            description: '1.5 cups (4 oz.) Ronzoni ziti'
          }),
          Ingredient.new({
            description: '1 cup Wegmans Tomato-Basil sauce'
          })
        ]
      })
    ]
  },
  {
    id: 5,
    meal_type: 'Snack',
    recipes: [
      Recipe.new({
        title: 'Cottage Cheese',
        calories: 80,
        fats: 1,
        carbs: 6,
        protein: 11,
        servings: 1,
        ingredients: [
          Ingredient.new({
            description: '1/2 cup Wegmans large-curd cottage cheese'
          })
        ],
        photo: File.new('/home/herb/Downloads/wegmans cottage cheese.jpg')
      })
    ]
  },
  {
    id: 6,
    meal_type: 'Snack',
    recipes: [
      Recipe.new({
        title: 'Apple with Peanut Butter',
        calories: 282,
        fats: 16,
        carbs: 31,
        protein: 8,
        servings: 1,
        ingredients: [
          Ingredient.new({
            description: 'one apple'
          }),
          Ingredient.new({
            description: 'two tablespoons peanut butter'
          })
        ]
      })
    ]
  },
  {
    id: 7,
    meal_type: 'Dinner',
    recipes: [
      Recipe.new({
        title: 'Japanese Chicken',
        calories: 713,
        fats: 21,
        carbs: 82,
        protein: 47,
        servings: 5,
        ingredients: [
          Ingredient.new({
            description: '2lbs chicken'
          }),
          Ingredient.new({
            description: '1 cup sugar'
          }),
          Ingredient.new({
            description: '1/2 cup vinegar'
          }),
          Ingredient.new({
            description: '1/2 cup water'
          }),
          Ingredient.new({
            description: '3 tablespoons soy sauce'
          }),
          Ingredient.new({
            description: '1/2 teaspoon salt'
          }),
          Ingredient.new({
            description: 'garlic powder'
          }),
          Ingredient.new({
            description: 'paprika'
          })
        ],
        directions: "Roll chicken in flour (pounding optional). Sprinkle one side with garlic powder, seasoned salt, and paprika. Brown lightly on both sides in olive oil. Put in 9x13\" pan and cover with syrup.\n\nMix sugar, vinegar, water, soy sauce, and salt well to make the syrup.\n\nBake uncovered at 350 degrees for 45 minutes."
      }),
      Recipe.new({
        title: 'Jasmine Rice',
        calories: 160,
        fats: 0,
        carbs: 34,
        protein: 3,
        ingredients: [
          Ingredient.new({
            description: '1/4 cup jasmine rice'
          })
        ]
      })
    ]
  },
  {
    meal_type: 'Snack',
    recipes: [
      Recipe.new({
        title: 'Almonds',
        calories: 216,
        fats: 19,
        protein: 8,
        carbs: 8,
        ingredients: [
          Ingredient.new({
            description: "1/4 cup almonds"
          })
        ]
      })
    ]
  },
  {
    meal_type: 'Lunch',
    recipes: [
      Recipe.new({
        title: 'Asian Green Bean Salad',
        calories: 191,
        fats: 3,
        protein: 8,
        carbs: 40,
        url: "http://www.myrecipes.com/recipe/asian-green-bean-salad-10000001714608/",
        servings: 4,
        ingredients: [
          Ingredient.new({ description: "3 ounces uncooked linguine" }),
          Ingredient.new({ description: "1 pound green beans, trimmed" }),
          Ingredient.new({ description: "2 cups diagonally sliced celery" }),
          Ingredient.new({ description: "1 cup sliced red bell pepper" }),
          Ingredient.new({ description: "1/2 cup slices green onions" }),
          Ingredient.new({ description: "1/4 cup rice wine vinegar" }),
          Ingredient.new({ description: "1/4 cup soy sauce" }),
          Ingredient.new({ description: "2 tablespoons dark sesame oil" }),
          Ingredient.new({ description: "2 teaspoons grated peeled fresh ginger" }),
          Ingredient.new({ description: "1/2 teaspoon sugar" }),
          Ingredient.new({ description: "1/4 teaspoon ground black pepper" }),
          Ingredient.new({ description: "3 minced garlic cloves" }),
          Ingredient.new({ description: "1 red jalapeno pepper, finely chopped" }),
        ],
        directions: "1. To prepare salad, break linguine in half. Cook pasta according to package directions, omitting salt and fat; add beans during last 3 minutes of cooking. Drain and rinse with cold water; drain. Place mixture in a large bowl. Stir in celery, bell pepper, onions, and cilantro.
        2. To prepare dressing, combine vinegar and remaining ingredients in a small bowl; stir with a whisk until blended. Add to salad; toss well. Cover and chill.",
        photo: File.new('/home/herb/Downloads/asian green bean salad.jpg')
      })
    ]
  },
  {
    meal_type: 'Breakfast',
    recipes: [
      Recipe.new({
        title: "Crunchy Granola",
        calories: 580,
        carbs: 132,
        fats: 5,
        protein: 11,
        ingredients: [
          Ingredient.new({ description: "2/3 cup honey" }),
          Ingredient.new({ description: "1/2 cup vegetable oil" }),
          Ingredient.new({ description: "1/3 cup packed brown sugar" }),
          Ingredient.new({ description: "2 teaspoons vanilla extract" }),
          Ingredient.new({ description: "6 cups old-fashioned oats" }),
          Ingredient.new({ description: "1 cup flaked coconut" }),
          Ingredient.new({ description: "2 cups raisins" })
        ]
      }),
      Recipe.new({
        title: 'Milk',
        calories: 113,
        fats: 2,
        carbs: 13,
        protein: 9,
        ingredients: [
          Ingredient.new({ description: '1 cup 1% milk' })
        ]
      })
    ]
  },
  {
    meal_type: 'Dinner',
    recipes: [
      Recipe.new({
      })
    ]
  }
])

days = Day.create([
    {
      id: 1,
      title: 'Sunday'
    },
    {
      id: 2,
      title: 'Monday'
    },
    {
      id: 3,
      title: 'Tuesday'
    },
    {
      id: 4,
      title: 'Wednesday'
    },
    {
      id: 5,
      title: 'Thursday'
    },
    {
      id: 6,
      title: 'Friday'
    },
    {
      id: 7,
      title: 'Saturday'
    }
])

day_meal = DayMealRelationship.new({
  day: days.first,
  meal: meals.first
})

day_meal.save
