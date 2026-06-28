import 'package:flutter/material.dart';

class AppColors {
  // Primary Purple
  static const Color primary = Color(0xFF7C3AED);
  static const Color primaryLight = Color(0xFF9D60F8);
  static const Color primaryDark = Color(0xFF5B21B6);
  static const Color primarySurface = Color(0xFFEDE9FE);
  static const Color primaryBorder = Color(0xFFDDD6FE);

  // Semantic
  static const Color green = Color(0xFF16A571);
  static const Color greenSurface = Color(0xFFE8F8F2);
  static const Color amber = Color(0xFFD98512);
  static const Color amberSurface = Color(0xFFFDF3E3);
  static const Color red = Color(0xFFE5484D);
  static const Color redSurface = Color(0xFFFDECED);
  static const Color violet = Color(0xFF7C3AED);
  static const Color violetSurface = Color(0xFFEDE9FE);

  // Neutral
  static const Color ink = Color(0xFF0E1726);
  static const Color slate600 = Color(0xFF4B5E78);
  static const Color slate500 = Color(0xFF6B7A90);
  static const Color slate400 = Color(0xFF9DABBE);
  static const Color slate300 = Color(0xFFCBD2DD);
  static const Color line = Color(0xFFE8ECF2);
  static const Color line2 = Color(0xFFF3F5F8);
  static const Color bg = Color(0xFFFFFFFF);      // putih
  static const Color white = Color(0xFFFFFFFF);

  // Gradient Header Ungu
  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primaryLight, primary, primaryDark],
  );

  // Gradient Primer (untuk tombol, dll)
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primaryLight, primary, primaryDark],
  );

  // Shadows
  static List<BoxShadow> shadowCard = [
    const BoxShadow(
      color: Color(0x14000000),
      blurRadius: 24,
      spreadRadius: 0,
      offset: Offset(0, 4),
    ),
  ];
  static List<BoxShadow> shadowSoft = [
    const BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 12,
      spreadRadius: 0,
      offset: Offset(0, 2),
    ),
  ];
  static List<BoxShadow> shadowPrimary = [
    const BoxShadow(
      color: Color(0x527C3AED),   // ungu glow
      blurRadius: 22,
      spreadRadius: 0,
      offset: Offset(0, 10),
    ),
  ];

  // Tone map untuk FeatureIcon
  static Map<String, List<Color>> tones = {
    'violet': [primarySurface, primary],
    'green': [greenSurface, green],
    'amber': [amberSurface, amber],
    'red': [redSurface, red],
    'slate': [line2, slate600],
  };

  static List<Color> tone(String name) => tones[name] ?? tones['violet']!;
}