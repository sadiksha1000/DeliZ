import 'package:delizious/screens/categories.dart';
import 'package:flutter/material.dart';
import './widgets/appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'DELI MEALS',
      ),
      body: CategoriesScreen(),
    );
  }
}
