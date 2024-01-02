import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/models/meal.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key, required this.favoriteMeal});

  final List<Meal> favoriteMeal;
  

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}



class _FavoriteScreenState extends State<FavoriteScreen> {

  
  @override
  Widget build(BuildContext context) {
    if (widget.favoriteMeal.isEmpty) {
      return Center(
        child: Text(
          'Nenhuma refeição marcada como favorita.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    } else {
      return ListView.builder(
          itemCount: widget.favoriteMeal.length,
          itemBuilder: (context, index) {
            return MealItem(
              meal: widget.favoriteMeal[index],
            );
          });
    }
  }
}
