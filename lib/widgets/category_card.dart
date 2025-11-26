import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final VoidCallback onSelectCategory;

  Widget _imageWidget() {
    // path /assets
    if (category.imageUrl.startsWith('assets/')) {
      return Image.asset(category.imageUrl, fit: BoxFit.cover);
    }
    // path pakai url
    return Image.network(category.imageUrl, fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      borderRadius: BorderRadius.circular(14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Positioned.fill(child: _imageWidget()),

            // gradient
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.06), Colors.black.withOpacity(0.36)],
                  ),
                ),
              ),
            ),

            // border 
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFD4A373).withOpacity(0.45)),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),

            // title
            Positioned(
              left: 14,
              bottom: 14,
              right: 14,
              child: Text(
                category.title,
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  shadows: [Shadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
