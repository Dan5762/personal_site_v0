import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const MyAppBar({required this.appBar});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Daniel Long'),
      leading: IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/about');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "About", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )
            ),
          ),
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.github),
          onPressed: () => launch('https://github.com/Dan5762'),
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.linkedin),
          onPressed: () => launch('https://www.linkedin.com/in/daniel-long-724b21171/'),
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.goodreads),
          onPressed: () => launch('https://www.goodreads.com/user/show/91441433-daniel-long'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}