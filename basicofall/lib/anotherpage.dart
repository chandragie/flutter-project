import 'package:basicofall/appbar.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List list = List();

  @override
  void initState() {
    super.initState();
    list.add("Todo 1");
    list.add("Todo 2");
    list.add("Todo 3");
    list.add("Todo 4");
    list.add("Todo 5");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text(
            "Todos",
            textDirection: TextDirection.ltr,
          )),
          body: Column(children: <Widget>[
            ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(index.toString()),
                  child: ListTile(
                    title: Text(list[index]),
                  ),
                );
              },
            ),
            IconButton(
                icon: Icon(Icons.home, textDirection: TextDirection.ltr),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                })
          ])),
    );
  }
}
