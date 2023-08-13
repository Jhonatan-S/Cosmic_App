import 'package:cosmic_app/common/theme/CustomInputFormField.dart';
import 'package:cosmic_app/pages/Favorites_page/favorite_page.dart';
import 'package:cosmic_app/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosmic app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Figtree',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: themeFormField,
        useMaterial3: true,
      ),
      home: const FavouritePage(),
    );
  }
}
