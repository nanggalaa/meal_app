import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/models/meals.dart';
import 'package:meal_app/widgets/meal_item.dart';
import 'package:meal_app/screens/meal_detail.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final empty = meals.isEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.playfairDisplay(
              fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: empty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("No Foods Found",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Text("Try selecting a different category",
                      style: GoogleFonts.lato(color: Colors.black45)),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
              itemCount: meals.length,
              itemBuilder: (_, i) => MealItem(
                meal: meals[i],
                onSelectMeal: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MealDetailScreen(meal: meals[i]),
                  ),
                ),
              ),
            ),
    );
  }
}
