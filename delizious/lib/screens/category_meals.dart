import 'package:delizious/widgets/appbar.dart';
import 'package:delizious/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(
  //     {Key? key, required this.categoryId, required this.categoryTitle})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: MyAppBar(
        title: 'DELI MEALS',
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
