import 'package:flutter/material.dart';

class AppColors {
  // Primary — hijau sage
  static const Color primary = Color(0xFF618764);       // sage medium
  static const Color primaryLight = Color(0xFF9CB080);  // sage light
  static const Color primaryDark = Color(0xFF2B5748);   // sage dark
  static const Color primarySurface = Color(0xFFEDF3E8);
  static const Color primaryBorder = Color(0xFFCCDAC4);

  // Semantic
  static const Color green = Color(0xFF618764);
  static const Color greenSurface = Color(0xFFEDF3E8);
  static const Color amber = Color(0xFFD98512);
  static const Color amberSurface = Color(0xFFFDF3E3);
  static const Color red = Color(0xFFE5484D);
  static const Color redSurface = Color(0xFFFDECED);
  static const Color violet = Color(0xFF7A5AF8);
  static const Color violetSurface = Color(0xFFF0EEFF);

  // Neutral — berbasis #273338 (dark teal)
  static const Color ink = Color(0xFF273338);
  static const Color slate600 = Color(0xFF3D5055);
  static const Color slate500 = Color(0xFF5E7075);
  static const Color slate400 = Color(0xFF8EA4A8);
  static const Color slate300 = Color(0xFFBDCDD0);
  static const Color line = Color(0xFFE2EAEB);
  static const Color line2 = Color(0xFFF0F4F4);
  static const Color bg = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

  // Gradient header — sage dark ke sage medium
  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primary, primaryDark, Color(0xFF1E3F34)],
  );

  // Gradient primer (tombol, dll)
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55, 1.0],
    colors: [primaryLight, primary, primaryDark],
  );

  // Shadows
  static List<BoxShadow> shadowCard = [
    const BoxShadow(
      color: Color(0x14273338),
      blurRadius: 24,
      spreadRadius: 0,
      offset: Offset(0, 4),
    ),
  ];
  static List<BoxShadow> shadowSoft = [
    const BoxShadow(
      color: Color(0x0A273338),
      blurRadius: 12,
      spreadRadius: 0,
      offset: Offset(0, 2),
    ),
  ];
  static List<BoxShadow> shadowPrimary = [
    const BoxShadow(
      color: Color(0x40618764),   // sage glow
      blurRadius: 22,
      spreadRadius: 0,
      offset: Offset(0, 10),
    ),
  ];

  // Tone map untuk FeatureIcon
  static Map<String, List<Color>> tones = {
    'green':  [greenSurface, primary],
    'amber':  [amberSurface, amber],
    'red':    [redSurface, red],
    'violet': [violetSurface, violet],
    'slate':  [line2, slate600],
    'dark':   [Color(0xFFDDE6E7), primaryDark],
  };

  static List<Color> tone(String name) => tones[name] ?? tones['green']!;
}