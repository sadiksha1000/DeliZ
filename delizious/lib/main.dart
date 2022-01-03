import 'package:delizious/home.dart';
import 'package:delizious/screens/categories.dart';
import 'package:delizious/screens/category_meals.dart';
import 'package:delizious/screens/meal_detail.dart';
import 'package:delizious/screens/tabscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: "SplineSans",
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline4: TextStyle(
              fontSize: 20,
              fontFamily: "SplineSans-Medium",
            )),
      ),
      home: TabScreen(),
      routes: {
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
      onUnknownRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
