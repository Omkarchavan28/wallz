import 'package:wallz/src/appBar.dart';
import 'package:wallz/src/drawer.dart';
import 'package:wallz/src/row_heading.dart';
import 'package:wallz/src/row_of_wallpaper.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void onTabTapped() {
    setState(() {
      _scaffoldKey.currentState.openDrawer(); // CHANGE THIS LINE
    });
  }

  final List<int> rows = [1, 2, 3];
  final Color color1 = Color(0xffB5192F);

  final Color color2 = Color(0xffE21F3D);

  final Color color3 = Color(0xffFE1949);

  final Color color4 = Color(0xffF0631C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // ADD THIS LINE
      appBar: TopBar(
        title: 'WALLZ',
        onPressed: onTabTapped,
      ),
      drawer: DrawerAppBar(),
      // body: DefaultScreen(), //defalut body
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color3, color4],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            height: 450,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
                color: color2),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text('Home'),
                  SizedBox(height: 20.0),
                  RowHeading(),
                  SizedBox(height: 20.0),
                  RowOfWallPaper(count: rows),
                  // RowHeading(),
                  // SizedBox(height: 20.0),
                  // RowOfWallPaper(count: rows),
                  // RowHeading(),
                  // SizedBox(height: 20.0),
                  // RowOfWallPaper(count: rows),
                  // RowHeading(),
                  // SizedBox(height: 20.0),
                  // RowOfWallPaper(count: rows),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
