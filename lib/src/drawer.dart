import 'package:flutter/material.dart';
import 'package:wallz/screens/home.dart';
import 'package:wallz/src/appBar.dart';

final Color color1 = Color(0xffB5192F);

final Color color2 = Color(0xffE21F3D);

final Color color3 = Color(0xffFE1949);

final Color color4 = Color(0xffF0631C);

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.transparent,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Text(
                    'Select Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      // color: Colors.black54,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                    ),
                    color: color2),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    // color: Colors.black54,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);

                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Home()));
                  // pop drawer
                },
              ),
              ListTile(
                title: Text(
                  'Category 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    // color: Colors.black54,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);

                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FirstPage()));
                  // pop drawer
                },
              ),
              ListTile(
                title: Text(
                  'Category 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    // color: Colors.black54,
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SecondPage()));
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = new GlobalKey<ScaffoldState>();

  void onTabTapped() {
    setState(() {
      _scaffoldKey1.currentState.openDrawer(); // CHANGE THIS LINE
    });
  }

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      key: _scaffoldKey1, // ADD THIS LINE
      drawer: DrawerAppBar(),
      appBar: TopBar(
        title: '1 st page',
        onPressed: onTabTapped,
      ),
      body: new Text("I belongs to First Page"),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey2 = new GlobalKey<ScaffoldState>();

  void onTabTapped() {
    setState(() {
      _scaffoldKey2.currentState.openDrawer(); // CHANGE THIS LINE
    });
  }

  @override
  Widget build(BuildContext ctxt) {
    // ADD THIS LINE

    return new Scaffold(
      key: _scaffoldKey2,
      drawer: DrawerAppBar(),
      appBar: TopBar(
        title: '2nd page',
        onPressed: onTabTapped,
      ),
      body: new Text("I belongs to Second Page"),
    );
  }
}
