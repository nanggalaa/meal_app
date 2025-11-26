import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/providers/favorites_provider.dart';
import 'package:meal_app/widgets/meal_item.dart';
import 'package:meal_app/screens/meal_detail.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<FavoritesProvider>().favoriteMeals;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: favorites.isEmpty
          ? Center(
              child: Text(
                'No favorites yet.\nTap ♥ on a meal to save it!',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(color: Colors.black54, fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (_, index) => MealItem(
                meal: favorites[index],
                onSelectMeal: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        MealDetailScreen(meal: favorites[index]),
                  ),
                ),
              ),
            ),
    );
  }
}
