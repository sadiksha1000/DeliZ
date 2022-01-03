import 'package:delizious/screens/categories.dart';
import 'package:delizious/widgets/appbar.dart';
import 'package:flutter/material.dart';
import './favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'MEALS'),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text(
              'Favorites',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      ),
    );
  }
}
