import 'package:delizious/widgets/appbar.dart';
import 'package:delizious/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filter';
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Filters',
      ),
      drawer: MainDrawer(),
      body: Container(
          child: Center(
        child: Text(
          'Filters Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      )),
    );
  }
}
