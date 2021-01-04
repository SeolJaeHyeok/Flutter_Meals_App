import 'package:flutter/material.dart';
import 'package:flutter_meals_app/dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  //
  // CategoryMealScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categorytMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => Text(categorytMeals[index].title),
        itemCount: categorytMeals.length,
      ),
    );
  }
}
