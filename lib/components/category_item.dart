import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.category});

  final Category? category;

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.categoriesMeals , arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [category!.color!.withOpacity(0.7), category!.color!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
            child: Text(
          category!.title!,
          style: Theme.of(context).textTheme.titleMedium,
        )),
      ),
    );
  }
}
