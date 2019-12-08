import 'package:wallz/src/appBar.dart';
import 'package:wallz/src/row_heading.dart';
import 'package:wallz/src/row_of_wallpaper.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<int> rows = [1, 2, 3, 4, 5, 6, 7, 8, 9]; //temp rows
  final Color color1 = Color(0xffB5192F);
  final Color color2 = Color(0xffE21F3D);
  final Color color3 = Color(0xffFE1949);
  final Color color4 = Color(0xffF0631C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(title: 'WALLZ'),
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
                  SizedBox(height: 20.0),
                  RowHeading(),
                  SizedBox(height: 20.0),
                  RowOfWallPaper(count: rows),
                  RowHeading(),
                  SizedBox(height: 20.0),
                  RowOfWallPaper(count: rows),
                  RowHeading(),
                  SizedBox(height: 20.0),
                  RowOfWallPaper(count: rows),
                  RowHeading(),
                  SizedBox(height: 20.0),
                  RowOfWallPaper(count: rows),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
