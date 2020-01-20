import 'package:flutter/material.dart';

void main() {
  MyStatefulWidget();
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Beginner",
              textDirection: TextDirection.ltr,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Card(
                        child: Expanded(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.arrow_left,
                                  textDirection: TextDirection.ltr),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          IconButton(
                              icon: Icon(Icons.arrow_right,
                                  textDirection: TextDirection.ltr),
                              onPressed: () {
                                Navigator.pushNamed(context, '/anotherpage2');
                              })
                        ],
                      ),
                    )))
              ],
            ),
          )),
    );
  }
}
