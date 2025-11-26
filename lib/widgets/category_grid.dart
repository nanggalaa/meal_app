import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key, required this.categories, required this.onSelectCategory});

  final List<Category> categories;
  final void Function(Category) onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 24, crossAxisSpacing: 24, childAspectRatio: 0.78),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryCard(category: category, onSelectCategory: () => onSelectCategory(category));
      },
    );
  }
}
