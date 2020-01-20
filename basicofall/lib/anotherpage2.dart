import 'package:basicofall/appbar.dart';
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
          appBar: MyAppBar(),
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
                                "Back",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            Text(
                              "Home",
                              textDirection: TextDirection.ltr,
                            ),
                            IconButton(
                                icon: Icon(Icons.home,
                                    textDirection: TextDirection.ltr),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                }),
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
