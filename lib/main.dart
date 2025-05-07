import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/recipe_detail_screen.dart';
import 'screens/add_recipe_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/add_experience_screen.dart';

void main() {
  runApp(FoodDiaryApp());
}

class FoodDiaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Diary',
      theme: ThemeData(
        primarySwatch: Colors.green,
        highlightColor: Colors.orange,

        fontFamily: 'Poppins',
        textTheme: TextTheme(
          
          headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
          bodySmall: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SplashScreen(),
        '/auth': (ctx) => AuthScreen(),
        '/home': (ctx) => HomeScreen(),
        '/recipe-detail': (ctx) => RecipeDetailScreen(),
        '/add-recipe': (ctx) => AddRecipeScreen(),
        '/profile': (ctx) => ProfileScreen(),
        '/add-experience': (ctx) => AddExperienceScreen(),
      },
    );
  }
}