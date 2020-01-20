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
              "This is Page 3",
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
                              icon: Icon(Icons.home,
                                  textDirection: TextDirection.ltr),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      ),
                    )))
              ],
            ),
          )),
    );
  }
}
