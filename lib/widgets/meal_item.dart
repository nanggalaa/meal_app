import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/models/meals.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
    required this.onSelectMeal,
  });

  final Meal meal;
  final VoidCallback onSelectMeal;

  @override
  Widget build(BuildContext context) {
    final accent = const Color(0xFFD4A373);
    return InkWell(
      onTap: onSelectMeal,
      borderRadius: BorderRadius.circular(14),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // photo
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
              child: SizedBox(
                height: 180,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (meal.imageUrl.startsWith('http'))
                      Image.network(meal.imageUrl, fit: BoxFit.cover, errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade200))
                    else
                      Image.asset(meal.imageUrl, fit: BoxFit.cover),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.18)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // content
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.title,
                    style: GoogleFonts.playfairDisplay(fontSize: 18, fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(children: [const Icon(Icons.schedule, size: 16, color: Colors.black54), const SizedBox(width: 6), Text('${meal.duration} min', style: const TextStyle(color: Colors.black54))]),
                      const SizedBox(width: 18),
                      Row(children: [const Icon(Icons.work, size: 16, color: Colors.black54), const SizedBox(width: 6), Text(meal.complexity.name.toUpperCase(), style: const TextStyle(color: Colors.black54))]),
                      const SizedBox(width: 18),
                      Row(children: [Icon(Icons.attach_money, size: 16, color: accent), const SizedBox(width: 6), Text(meal.affordability.name.toUpperCase(), style: const TextStyle(color: Colors.black54))]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
