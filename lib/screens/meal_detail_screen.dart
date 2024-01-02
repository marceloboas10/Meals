import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  const MealDetailScreen(
      {super.key, required this.onToggleFavorite, required this.isFavorite});

  final Function(Meal) onToggleFavorite;
  final Function(Meal) isFavorite;

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState(); 
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  bool favoriteColor = false;

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title!),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Ingredientes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Container(
                height: 220,
                width: 300,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    itemCount: meal.ingredients!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.amberAccent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(meal.ingredients![index]),
                        ),
                      );
                    }),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Passos',
                    style: Theme.of(context).textTheme.titleMedium,
                  )),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 220,
                width: 300,
                child: ListView.builder(
                    itemCount: meal.steps!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.pink.shade400,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(
                          meal.steps![index],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              widget.onToggleFavorite(meal);
            });
          },
          child: Icon(Icons.favorite,
              color: widget.isFavorite(meal) ? Colors.red : Colors.white),
        ));
  }
}
