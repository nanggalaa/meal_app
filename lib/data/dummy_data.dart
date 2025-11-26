import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meals.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Indonesian Food',
    imageUrl: 'assets/images/categories/c1.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Beverages',
    imageUrl: 'assets/images/categories/c2.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Seafood',
    imageUrl: 'assets/images/categories/c3.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Healthy',
    imageUrl: 'assets/images/categories/c4.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Japanese Food',
    imageUrl: 'assets/images/categories/c5.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Western Food',
    imageUrl: 'assets/images/categories/c6.jpg',
  ),
  Category(
    id: 'c7',
    title: 'Dessert & Sweets',
    imageUrl: 'assets/images/categories/c7.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Snack & Appetizers',
    imageUrl: 'assets/images/categories/c8.jpg',
  ),
  Category(
    id: 'c9',
    title: 'Spicy Addict',
    imageUrl: 'assets/images/categories/c9.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Kids Meals',
    imageUrl: 'assets/images/categories/c10.jpg',
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c9'],
    title: 'Chicken Satay with Peanut Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnQEkToMubMK0NlCrocHGEoMjNebMBaj6WZA&s',
    duration: 25,
    ingredients: [
      'Chicken',
      'Peanut Sauce',
      'Sweet Soy Sauce',
      'Skewers',
      'Garlic',
    ],
    steps: [
      'Marinate chicken with seasonings.',
      'Skewer the chicken.',
      'Grill until cooked.',
      'Serve with peanut sauce.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Iced Cappuccino',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.pexels.com/photos/12540661/pexels-photo-12540661.png',
    duration: 5,
    ingredients: ['Coffee', 'Milk', 'Ice', 'Sugar'],
    steps: [
      'Brew coffee.',
      'Mix with milk and sugar.',
      'Pour over ice and serve.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm3',
    categories: ['c3'],
    title: 'Grilled Garlic Butter Shrimp',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.thespruceeats.com/thmb/5WJlMMrKjusLO7Zxl7cZC3idyuE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/grilled-garlic-butter-shrimp-335998-1e6d7821c388481c916e1492e1355ac9.jpg',
    duration: 15,
    ingredients: ['Shrimp', 'Garlic', 'Butter', 'Parsley', 'Salt'],
    steps: [
      'Melt butter in a pan.',
      'Add garlic until fragrant.',
      'Cook shrimp until pink.',
      'Garnish with parsley and serve.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm4',
    categories: ['c3', 'c4'],
    title: 'Avocado Salmon Salad',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/07/Salmon-Avocado-Salad-6.jpg',
    duration: 10,
    ingredients: [
      'Salmon',
      'Avocado',
      'Lettuce',
      'Tomatoes',
      'Olive Oil',
      'Lemon',
    ],
    steps: [
      'Grill or sear salmon.',
      'Prepare salad greens.',
      'Add avocado and tomatoes.',
      'Drizzle olive oil and lemon.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm5',
    categories: ['c3', 'c5'],
    title: 'Salmon Sushi Roll',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScKOuMTq7A7_BshKhXZIWspeIBjV5LgMg8mw&s',
    duration: 35,
    ingredients: ['Sushi Rice', 'Salmon', 'Nori', 'Cucumber', 'Vinegar'],
    steps: [
      'Prepare sushi rice.',
      'Place rice on nori.',
      'Add salmon and cucumber.',
      'Roll tightly and slice.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm6',
    categories: ['c6'],
    title: 'Classic Beef Burger',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://i.iheart.com/v3/re/new_assets/674e0b526c4889fa757e45cf?ops=contain(1480,0)',
    duration: 20,
    ingredients: ['Beef Patty', 'Burger Bun', 'Lettuce', 'Tomato', 'Cheese'],
    steps: [
      'Grill the beef patty.',
      'Toast the buns.',
      'Assemble with veggies and cheese.',
      'Serve warm.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Strawberry Cheesecake',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://t3.ftcdn.net/jpg/06/55/07/94/360_F_655079478_vLyzPYqiaaCQbdf5aJfzjn9hAUmvvLjr.jpg',
    duration: 60,
    ingredients: [
      'Cream Cheese',
      'Sugar',
      'Strawberries',
      'Butter',
      'Graham Cracker Crust',
    ],
    steps: [
      'Prepare crust and press into pan.',
      'Mix cheese and sugar.',
      'Bake and chill.',
      'Top with strawberries.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'French Fries with Dip',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://media.istockphoto.com/id/618955754/photo/french-fries-and-tomato-sauce.jpg?s=612x612&w=0&k=20&c=SiGN7ouRANphddiZh5LGY3hcR2M0ORZkuN0REpnyN-0=',
    duration: 15,
    ingredients: ['Potatoes', 'Salt', 'Oil', 'Dipping Sauce'],
    steps: [
      'Cut potatoes.',
      'Deep fry until golden.',
      'Season and serve with dip.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm9',
    categories: ['c9', 'c5'],
    title: 'Spicy Chili Ramen',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.orchidsandsweettea.com/wp-content/uploads/2024/05/Spicy-Chili-Garlic-Chicken-Ramen-7.jpg',
    duration: 20,
    ingredients: ['Noodles', 'Chili Paste', 'Broth', 'Garlic', 'Egg'],
    steps: [
      'Prepare broth with chili paste.',
      'Cook noodles.',
      'Combine and add toppings.',
      'Serve hot.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm10',
    categories: ['c10', 'c8'],
    title: 'Mini Chicken Nuggets & Fries',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPvAE181HqmJa-5KpT87ak0mifilIRpHhuPQ&s',
    duration: 15,
    ingredients: ['Chicken Nuggets', 'Fries', 'Ketchup'],
    steps: [
      'Fry chicken nuggets.',
      'Fry or bake fries.',
      'Serve with ketchup.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm11',
    categories: ['c1'],
    title: 'Chicken Noodle',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://i.pinimg.com/736x/2c/bf/9b/2cbf9bccdbd9c21769c03392dd695852.jpg',
    duration: 25,
    ingredients: [
      'Wheat Noodles',
      'Chicken',
      'Soy Sauce',
      'Garlic',
      'Bok Choy',
      'Chicken Broth',
    ],
    steps: [
      'Cook noodles until soft.',
      'Saute garlic and chicken with soy sauce.',
      'Prepare chicken broth.',
      'Serve noodles with chicken topping and broth.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm12',
    categories: ['c1', 'c4', 'c9'],
    title: 'Stir-Fried Water Spinach (Tumis Kangkung)',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://img-global.cpcdn.com/recipes/aceb09a8e893087c/680x781f0.621255_0.5_1.0q80/resep-tumis-kangkung-sederhana-foto-resep-utama.jpg',
    duration: 10,
    ingredients: [
      'Water Spinach',
      'Garlic',
      'Chili',
      'Salt',
      'Light Soy Sauce (optional)',
    ],
    steps: [
      'Heat oil and sauté garlic and chili.',
      'Add water spinach and stir-fry quickly.',
      'Season lightly and serve warm.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm13',
    categories: ['c2', 'c4'],
    title: 'Fresh Orange Juice',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.harianbatakpos.com/wp-content/uploads/2025/07/Ilustrasi-minuman-es-jeruk-Yakult-segar-dalam-gelas-saji.jpg',
    duration: 5,
    ingredients: ['Fresh Oranges', 'Water', 'Sugar (optional)', 'Ice Cubes'],
    steps: [
      'Squeeze fresh oranges.',
      'Mix with water and sugar if desired.',
      'Serve over ice.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm14',
    categories: ['c7', 'c8', 'c10'],
    title: 'Classic Donut',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.schoolhouseglutenfreegourmet.com/wp-content/uploads/2018/11/Schoolhouse-June-2021-18-scaled.jpg',
    duration: 45,
    ingredients: ['Flour', 'Eggs', 'Milk', 'Butter', 'Sugar', 'Yeast'],
    steps: [
      'Mix dough ingredients and let rise.',
      'Shape and fry until golden.',
      'Coat with sugar or glaze.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm15',
    categories: ['c2', 'c4'],
    title: 'Almond Milk',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.mos.cms.futurecdn.net/j8NxXN6CvFBuUsSjmFJSCg-1000-80.jpg',
    duration: 5,
    ingredients: ['Almond Milk', 'Ice Cubes'],
    steps: ['Pour almond milk into a glass.', 'Add ice if desired.'],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
