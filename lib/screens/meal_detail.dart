import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:meal_app/models/meals.dart';
import 'package:meal_app/providers/favorites_provider.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;
  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    final favProv = context.watch<FavoritesProvider>();
    final isFav = favProv.isFavorite(meal);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F1EB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F1EB),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black87),
        title: Text(
          meal.title,
          style: GoogleFonts.playfairDisplay(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : Colors.black87,
            ),
            onPressed: () => favProv.toggleFavorite(meal),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // hero Image
            SizedBox(
              height: 300,
              width: double.infinity,
              child: meal.imageUrl.startsWith('assets/')
                  ? Image.asset(meal.imageUrl, fit: BoxFit.cover)
                  : Image.network(meal.imageUrl, fit: BoxFit.cover),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.title,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // info Chips Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _infoChip('${meal.duration} min', Icons.schedule),
                      _infoChip(meal.complexity.name.toUpperCase(), Icons.work),
                      _infoChip(
                        meal.affordability.name.toUpperCase(),
                        Icons.attach_money,
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ingredients
                  Text(
                    'Ingredients',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),

                  ...meal.ingredients.map(
                    (i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        '• $i',
                        style: const TextStyle(fontSize: 15, height: 1.4),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // steps
                  Text(
                    'Steps',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),

                  ...meal.steps.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        '${e.key + 1}. ${e.value}',
                        style: const TextStyle(fontSize: 15, height: 1.5),
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // kustomisasi informasi dietary
                  Text(
                    'Dietary Information',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 14),

                  _buildDietaryGrid(meal),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // info Chip
  Widget _infoChip(String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F5F2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14, color: Colors.black54),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  // grid icon informasi
  Widget _buildDietaryGrid(Meal meal) {
    final items = [
      ("Gluten Free", meal.isGlutenFree, _glutenIcon()),
      ("Vegan", meal.isVegan, _veganIcon()),
      ("Vegetarian", meal.isVegetarian, _vegeIcon()),
      ("Lactose Free", meal.isLactoseFree, _milkIcon()),
    ];

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F5F2),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black12),
      ),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 2.6,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: items.map((e) {
          return _dietaryItem(e.$1, e.$2, e.$3);
        }).toList(),
      ),
    );
  }

  Widget _dietaryItem(String label, bool value, Widget icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4),
        ],
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3A3A3A),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: value
                  ? Colors.green.withOpacity(0.15)
                  : Colors.red.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              value ? "YES" : "NO",
              style: TextStyle(
                color: value ? Colors.green[800] : Colors.red[800],
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // icon informasi dalam detail menu
  Widget _glutenIcon() => Icon(Icons.grain, size: 22, color: Colors.brown[800]);

  Widget _veganIcon() => Icon(Icons.eco, size: 22, color: Colors.green[700]);

  Widget _vegeIcon() => Icon(Icons.spa, size: 22, color: Colors.green[800]);

  Widget _milkIcon() =>
      Icon(Icons.local_drink, size: 22, color: Colors.blueGrey[600]);
}
