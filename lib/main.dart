import 'package:flutter/material.dart';

import 'package:personal_site/screens/index.dart';
import 'package:personal_site/screens/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Work in Progress',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'SourceSansPro'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => IndexPage(),
        '/about': (context) => AboutPage()
      },
    );
  }
}
