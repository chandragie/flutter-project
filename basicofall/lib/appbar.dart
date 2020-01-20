import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Flutter Beginner",
        textDirection: TextDirection.ltr,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.beenhere,
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            print("been here clicked");
          },
        ),
        IconButton(
          icon: Icon(
            Icons.map,
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            print("map clicked");
          },
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            textDirection: TextDirection.ltr,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/anotherpage');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
