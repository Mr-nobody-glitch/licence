import 'package:flutter/material.dart';

import 'modules/Meal.dart';
import 'modules/Category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'pizza',
    imageurl:
        'assets/images/whole-italian-pizza-wooden-table-with-ingredients_251318-13.jpg',
  ),
  Category(
      id: 'c8',
      title: 'Sandwich',
      imageurl: 'assets/images/sandwitch.jpg'
  ),

  Category(
    id: 'c3',
    title: 'Hamburgers',
    imageurl: 'assets/images/burgerscategory.jpg',
  ),
  Category(
    id: 'c4',
    title: 'salad',
    imageurl: 'assets/images/salade.jpg',
  ),
  Category(
    id: 'c5',
    title: 'tarditionel',
    imageurl: 'assets/images/algerian_og.jpg',
  ),
  Category(id: 'c6', title: 'dessert', imageurl: 'assets/images/desert.jpg'),
  Category(
      id: 'c7', title: 'Happy Meal', imageurl: 'assets/images/happymeal.jpeg'),
  Category(
    id: 'c2',
    title: 'drinks',
    imageurl: 'assets/images/drinks.jpg',
  ),
  /*Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),*/
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Regular Pizza',
    //affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/regular pizza.jpg',
    ingredients: [
      ' Tomatoes ',
      '  Olive ',
      ' Onion',
      'pepper ',
      'Spices',
      'Cheese (optional)',
      'Ground Beef ',
    ],
    duration: 300,
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Margherita Pizza',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/pizza margherita.jpg',
    duration: 350,
    ingredients: [
      ' tomato',
      ' mozzarella',
      ' basil',
      'olive oil',
      'Special Sauce'
          'Cheese (optional)',
      'Ground Beef (Optional)',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm12',
    categories: [
      'c1',
    ],
    title: 'Chicago Pizza',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/Chicago Pizza.jpg',
    duration: 10,
    ingredients: [
      ' tomato',
      ' mozzarella',
      ' cheese',
      'Ground Beef ',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm13',
    categories: [
      'c1',
    ],
    title: 'Italian Pizza',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/italian pizza.jpg',
    duration: 10,
    ingredients: [
      ' Tomato',
      'Mozzarella Cheese',
      ' Basil',
      'Olive',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm14',
    categories: [
      'c1',
    ],
    title: 'White Pizza',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/white pizza.jpg',
    duration: 10,
    ingredients: [
      ' Ricotta  Cheese',
      'Onion',
      ' freshly grated parmigiano-reggiano cheese',
      'Special Sauce'
          ' basil',
      'lemon',
      'olive oil',
      'garlic',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),

  Meal(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'Mojito',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/mojito.jpg',
    duration: 200,
    ingredients: [
      ' fresh mint leaves ',
      ' lime',
      'Ice Cubes',
      'Soda',
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
  ),
  Meal(
    id: 'm15',
    categories: [
      'c2',
    ],
    title: 'Fruit Juice',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/fruit juce.webp',
    duration: 200,
    ingredients: [
      'All Fruits(Optionel)',
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Soda',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl: 'assets/images/soda.jpg',
    duration: 100,
    ingredients: [
      'Coca Cola',
      'Sprite',
      'Fanta',
      'Pepsi',
      'Lipton',
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
  ),

  Meal(
    id: 'm5',
    categories: ['c3'],
    title: 'Big Burger',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/big burger.jpeg',
    duration: 400,
    ingredients: [
      'chips',
      'Fresh Mushrooms',
      'Ground Beef ',
      'Egg',
      'Dried Minced Onion ',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      ' Steak Sauce',
      'Lettuce',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
  ),
  Meal(
    id: 'm20',
    categories: ['c3'],
    title: 'Spicy Burger',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/spicyburger.jpg',
    duration: 350,
    ingredients: [
      'chips',
      'Fresh Mushrooms',
      'Ground Beef ',
      'Dried Minced Onion ',
      'Fresh Jalapeno Peppers',
      ' Fresh Poblano Chile Pepper',
      'Red Pepper Flakes',
      'Ketchup + Mayo + Mustard.(Optional)',
      ' Steak Sauce',
      'Lettuce',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
  ),
  Meal(
    id: 'm21',
    categories: ['c3'],
    title: 'Fish Burger',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/fish burger.jpg',
    duration: 300,
    ingredients: [
      'chips',
      'Fresh Mushrooms',
      'Cod or White fish (Optional)',
      'Egg',
      'Dried Minced Onion ',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      'Lettuce',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
  ),
  Meal(
    id: 'm22',
    categories: ['c3'],
    title: 'Chicken Burger',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/chicken burger.png',
    duration: 15,
    ingredients: [
      'chips',
      'xtra-lean ground chicken ',
      'Fresh Mushrooms',
      ' Italian-seasoned Bread Crumbs',
      'Egg',
      'Dried Minced Onion ',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      'Lettuce',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
  ),
  Meal(
    id: 'm23',
    categories: ['c3'],
    title: 'Cheese Burger',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/cheeseburger.jpg',
    duration: 300,
    ingredients: [
      'chips',
      'Fresh Mushrooms',
      'Ground Beef ',
      'Pasteurized Cheese',
      'Egg',
      'Dried Minced Onion ',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      ' Steak Sauce',
      'Lettuce',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
  ),

  Meal(
    id: 'm6',
    categories: [
      'c5',
    ],
    title: 'Hmis',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/hmis.jpg',
    duration: 100,
    ingredients: [
      'Olive '
          'Egg (Optional)',
      'Pepperjack Cheese ',
      'Olive Oil',
      'Pepper',
      'Salt and black Pepper'
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
  ),
  Meal(
    id: 'm6',
    categories: [
      'c5',
    ],
    title: 'Kouskous',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/kouskous.jpg',
    duration: 500,
    ingredients: [
      'Olive Oil',
      'Kouskous',
      'Chicken Steaks',
      'Some vegetables',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
  ),

  Meal(
    id: 'm18',
    categories: [
      'c4',
    ],
    title: 'salade 1',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/slata.jpg',
    duration: 150,
    ingredients: [
      'All Optional',
      'Lettuce',
      'vegetables (Optional)',
      'Olive',
      'Corn',
      'Tomato',
      'Tuna',
      'Pepper'
          'Sauce',
      'Egs'
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
  ),
  Meal(
    id: 'm19',
    categories: [
      'c4',
    ],
    title: 'salade 2',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/basic.webp',
    duration: 150,
    ingredients: [
      'All Optional',
      'Lettuce',
      'vegetables (Optional)',
      'Olive',
      'Corn',
      'Tomato',
      'Tuna',
      'Pepper'
          'Sauce',
      'Egs'
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
  ),
  Meal(
    id: 'm30',
    categories: [
      'c4',
    ],
    title: 'salade 3',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/salade3.webp',
    duration: 150,
    ingredients: [
      'All Optional',
      'Lettuce',
      'vegetables (Optional)',
      'Olive',
      'Corn',
      'Tomato',
      'Tuna',
      'Pepper'
          'Sauce',
      'Egs'
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
  ), //here

  Meal(
    id: 'm7',
    categories: [
      'c5',
    ],
    title: 'Chakhchoukhat',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/02-chakhchoukha-de-biskra.jpg',
    duration: 500,
    ingredients: [
      ' Olive Oil',
      'Chakhchoukhat',
      'Chicken Steaks',
      'Meat Steaks',
      'Some vegetables',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
  ),

  Meal(
    id: 'm9',
    categories: [
      'c6',
    ],
    title: 'Hot Chocolate',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/hot chocolat.jpg',
    duration: 250,
    ingredients: [
      'Milk',
      'Heavy Cream',
      'Powdered Sugar',
      'Espresso Powder (optional)',
      'Sweet Chocolate',
      'Whipped Cream ',
    ],
    steps: [],
  ),
  Meal(
    id: 'm25',
    categories: [
      'c6',
    ],
    title: 'Cofee',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/coffe.jpg',
    duration: 100,
    ingredients: [
      '                         TYPES :',
      'Black Coffe',
      'Cappuccino',
      'Espresso',
      'Iced Coffee',
    ],
    steps: [
      'Black Coffe',
    ],
  ),

  Meal(
    id: 'm24',
    categories: [
      'c6',
    ],
    title: 'Tiramisu',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl: 'assets/images/tiramisu.jpg',
    duration: 350,
    ingredients: [
      'Brewed Coffee',
      'Egs',
      'Cocoa',
      'White Sugar ',
      'Milk',
      'Heavy Cream',
      'Vanilla',
      'cookies',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
  ),

  Meal(
    id: 'm10',
    categories: [
      'c6',
    ],
    title: 'Fruit Salad',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/fruit.jpg',
    duration: 400,
    ingredients: ['Fruits (optional)'],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
  ),
  Meal(
    id: 'm11',
    categories: [
      'c7',
    ],
    title: 'Happy Meal',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/kidsmeal.jpg',
    duration: 300,
    ingredients: [
      'Burger',
      'Soda',
      'Chips',
      'Toy',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm31',
    categories: [
      'c8',
    ],
    title: 'Panini',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/Mediterranean Panini.jpg',
    duration: 300,
    ingredients: [
      'Meat Steaks',
      'Tomato',
      'Sauce',
      'Salt and black Pepper',
          'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      'Egg',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm32',
    categories: [
      'c8',
    ],
    title: 'Taco',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/taco bee.jpg',
    duration: 300,
    ingredients: [
      'Meat Steaks',
      'Tomato',
      'Sauce',
      'Salt and black Pepper',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      'Egg',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),
  Meal(
    id: 'm33',
    categories: [
      'c8',
    ],
    title: 'Shawarma',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'assets/images/chawarma.jpg',
    duration: 300,
    ingredients: [
      'Meat Steaks',
      'Tomato',
      'Sauce',
      'Salt and black Pepper',
      'Pepperjack Cheese ',
      'Ketchup + Mayo + Mustard.(Optional)',
      'Egg',
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
  ),



];
