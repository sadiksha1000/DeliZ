import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  MyAppBar({Key? key, required this.title})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
