import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Card(
                        child: Row(
                          textDirection: TextDirection.ltr,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.arrow_back,
                                    textDirection: TextDirection.ltr),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            Expanded(
                              child: Text(
                                "Back to Home",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
