import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/tabs.dart';
import 'package:meal_app/providers/favorites_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FavoritesProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // color tema
  static const Color bgSoftBeige = Color(0xFFF5F1EB);
  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color accent = Color(0xFFD4A373);
  static const Color accentMuted = Color(0xFFB48A6B);
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B6B6B);

  @override
  Widget build(BuildContext context) {
    final base = ThemeData.light();

    final theme = base.copyWith(
      scaffoldBackgroundColor: bgSoftBeige,

      colorScheme: ColorScheme.fromSeed(
        seedColor: accent,
        background: bgSoftBeige,
        primary: accent,
        secondary: accentMuted,
        brightness: Brightness.light,
      ),

      textTheme: GoogleFonts.playfairDisplayTextTheme(base.textTheme).copyWith(
        bodyMedium: GoogleFonts.lato(textStyle: base.textTheme.bodyMedium),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: bgSoftBeige,
        foregroundColor: textPrimary,
        elevation: 0,
        titleTextStyle: GoogleFonts.playfairDisplay(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        iconTheme: const IconThemeData(color: textPrimary),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: bgSoftBeige,
        selectedItemColor: accent,
        unselectedItemColor: Colors.black54,
        elevation: 0,
      ),

      // ✅ FIX: Flutter SDK baru meminta CardThemeData, bukan CardTheme
      cardTheme: CardThemeData(
        surfaceTintColor: Colors.transparent,
        color: cardWhite,
        elevation: 4,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App - Premium',
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
