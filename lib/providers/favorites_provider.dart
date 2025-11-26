import 'package:flutter/material.dart';
import 'package:meal_app/models/meals.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Meal> _favoriteMeals = [];

  List<Meal> get favoriteMeals => List.unmodifiable(_favoriteMeals);

  List<Meal> get favorites => favoriteMeals;

  bool isFavorite(Meal meal) => _favoriteMeals.any((m) => m.id == meal.id);

  void toggleFavorite(Meal meal) {
    final existsIndex = _favoriteMeals.indexWhere((m) => m.id == meal.id);
    if (existsIndex >= 0) {
      _favoriteMeals.removeAt(existsIndex);
    } else {
      _favoriteMeals.add(meal);
    }
    notifyListeners();
  }
}
