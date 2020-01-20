import 'package:flutter/material.dart';
import 'anotherpage.dart';
import 'anotherpage2.dart';
import 'appbar.dart';

void main() {
  runApp(MyStatefulWidget());
}

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.red,
//         child: Center(
//           child: Text(
//             "Hallo from Flutters",
//             textDirection: TextDirection.ltr,
//             style: TextStyle(fontSize: 40.0, color: Colors.white),
//           ),
//         ));
//   }
// }

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var brightness = Brightness.dark;
  var primaryColor = Colors.red;
  var accentColor = Colors.lime;

  bool isChecked = false;
  int gender = 1;
  void changeBrightness() {
    setState(() {
      if (isChecked && brightness == Brightness.dark) {
        brightness = Brightness.light;
        primaryColor = Colors.blue;
        accentColor = Colors.green;
      } else if (!isChecked && brightness == Brightness.light) {
        brightness = Brightness.dark;
        primaryColor = Colors.red;
        accentColor = Colors.lime;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/anotherpage": (BuildContext context) => Screen2(),
        "/anotherpage2": (BuildContext context) => Screen3(),
      },
      home: Builder(
        builder: (context) => Scaffold(
            appBar: MyAppBar(),
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/bg.jpeg"),
                        // height: 150.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 16.0),
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage("images/hckr.png"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 140.0, left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Chandra Gie",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            Text(
                              "First Flutter Project",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text("Item 1"),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text("Item 2"),
                        onTap: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print("Floating button clicked!");
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Row(
                          textDirection: TextDirection.ltr,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.person,
                                textDirection: TextDirection.ltr,
                              ),
                              onPressed: () {
                                print("person is clicked!");
                              },
                            ),
                            Expanded(
                              child: Text(
                                "Child 2",
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                textDirection: TextDirection.ltr,
                              ),
                              onPressed: () {
                                print("expand clicked");
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Image(image: AssetImage("images/coolimages.jpg"))),
                  Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.person), hintText: "Username"),
                        onChanged: (input) {
                          print(input);
                        },
                      )),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Text(
                        "Check to enable light mode",
                        textDirection: TextDirection.ltr,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: RaisedButton(
                      child: Text("Change your brightness now!",
                          textDirection: TextDirection.ltr),
                      onPressed: () {
                        print("changeBrightness!");
                        changeBrightness();
                      },
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: gender,
                        onChanged: (int value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
      theme: ThemeData(
          primaryColor: primaryColor,
          accentColor: accentColor,
          brightness: brightness),
    );
  }
}
