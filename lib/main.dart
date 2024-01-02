import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/filter.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/screens/settings_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Filter filter = Filter();

  List<Meal> _avaliableMeal = dummyMeals;
  final List<Meal> _favoriteMeal = [];

  void _filterMeals(Filter filter) {
    setState(() {
      this.filter = filter;
      _avaliableMeal = dummyMeals.where((meal) {
        final filterGluten = filter.isGluten && !meal.isGluten;
        final filterLactose = filter.isLactose && !meal.isLactose;
        final filterVegan = filter.isVegan && !meal.isVegan;
        final filterVegetarian = filter.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  void _toggleFavorite(Meal meal) {
    setState(() {
      _favoriteMeal.contains(meal)
          ? _favoriteMeal.remove(meal)
          : _favoriteMeal.add(meal);
    });
  }

  bool _isFavorite(Meal meal) {
    return _favoriteMeal.contains(meal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        primaryColor: Colors.indigo,
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium:
                const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed')),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.home: (ctx) => TabsScreen(favoriteMeal: _favoriteMeal),
        AppRoutes.categoriesMeals: (ctx) =>
            CategoriesMealsScreen(meals: _avaliableMeal),
        AppRoutes.detailMeals: (ctx) =>
            MealDetailScreen(onToggleFavorite: _toggleFavorite, isFavorite:_isFavorite ),
        AppRoutes.settings: (ctx) => SettingsScreen(
              onSettingsChange: _filterMeals,
              filter: filter,
            )
      },
    );
  }
}
