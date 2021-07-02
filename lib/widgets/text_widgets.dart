import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget titleText(text) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    ),
  );
}

Widget headerText(text) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    ),
  );
}

Widget bodyText(text) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
      ),
    ),
  );
}

Widget linkedListText(listElements) {
  List<Widget> list = <Widget>[];

  for(var listElement in listElements) {
    list.add(
      InkWell(
        splashColor: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  listElement['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  listElement['description'],
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () => launch(listElement['link']),
      )
    );
  }

  return Column(children: list);
}