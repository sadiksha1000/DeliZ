import 'package:delizious/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(
      BuildContext context, IconData icon, String title, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
      onTap: () => onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Cooking Up!!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'SplineSans-Medium',
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(height: 20),
        buildListTile(context, Icons.restaurant, 'Meals', () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        SizedBox(height: 20),
        buildListTile(context, Icons.settings, 'Filters', () {
          Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
        })
      ],
    ));
  }
}
