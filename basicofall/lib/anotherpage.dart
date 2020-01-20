import 'package:basicofall/appbar.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: MyAppBar(),
          body: SingleChildScrollView(
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
                          Text(
                            "Next Page",
                            textDirection: TextDirection.ltr,
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward,
                                  textDirection: TextDirection.ltr),
                              onPressed: () {
                                Navigator.pushNamed(context, '/anotherpage2');
                              }),
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
