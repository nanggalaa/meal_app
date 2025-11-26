import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/categories.dart';
import 'package:meal_app/screens/favorites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  late final List<Map<String, Object>> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'title': 'Categories', 'page': const CategoriesScreen()},
      {'title': 'Favorites', 'page': const FavoritesScreen()},
    ];
  }

  void _selectPage(int index) => setState(() => _selectedPageIndex = index);

  @override
  Widget build(BuildContext context) {
    final title = _pages[_selectedPageIndex]['title'] as String;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: GoogleFonts.playfairDisplay(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
      ),
    );
  }
}
