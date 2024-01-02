enum Complexity {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

class Meal {
  final String? id;
  final String? title;
  final List<String>? categories;
  final String imageUrl;
  final List<String>? ingredients;
  final List<String>? steps;
  final int duration;
  final bool isGluten;
  final bool isLactose;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.title,
    required this.categories,
    required this.imageUrl,
    required this.steps,
    required this.duration,
    required this.ingredients,
    required this.isGluten,
    required this.isLactose,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'Simples';

      case Complexity.medium:
        return 'Médio';
      case Complexity.difficult:
        return 'Difícil';
      default:
        return 'Desconhecido';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.fair:
        return 'Justo';
      case Cost.expensive:
        return 'Caro';

      default:
        return 'Desconhecido';
    }
  }
}
