import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/widgets/category_card.dart';
import 'package:meal_app/screens/meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: GridView.builder(
          padding: const EdgeInsets.only(top: 6, bottom: 12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.82,
          ),
          itemCount: availableCategories.length,
          itemBuilder: (context, index) {
            final category = availableCategories[index];
            return CategoryCard(
              category: category,
              onSelectCategory: () {
                final filteredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => MealsScreen(title: category.title, meals: filteredMeals)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
