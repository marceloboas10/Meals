import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Vamos Cozinhar?')),
        body: const CategoriesScreen(),
        
      ),
    );
  }
}
