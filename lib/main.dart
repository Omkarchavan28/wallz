import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallz/screens/default_screen.dart';
import 'package:wallz/screens/recipe_list.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  List<int> wallpapers = [1, 2, 3, 4, 5, 6, 7, 8, 9]; //temp data
  List<int> rows = [1, 2, 3, 4, 5, 6, 7, 8, 9]; //temp rows

  @override
  Widget build(BuildContext context) {
    //   return RecipeListPage();
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallz'),
      ),
      // body: DefaultScreen(), //defalut body
      body: Container(
        color: Colors.grey[600],
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              RowHeading(),
              SizedBox(height: 20.0),
              RowOfWallPaper(wallpapers: wallpapers),
              RowHeading(),
              SizedBox(height: 20.0),
              RowOfWallPaper(wallpapers: wallpapers),
              RowHeading(),
              SizedBox(height: 20.0),
              RowOfWallPaper(wallpapers: wallpapers),
              RowHeading(),
              SizedBox(height: 20.0),
              RowOfWallPaper(wallpapers: wallpapers),
            ],
          ),
        ),
      ),
    );
  }
}

class RowHeading extends StatelessWidget {
  const RowHeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "My Favorites".toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
              // textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}

class RowOfWallPaper extends StatelessWidget {
  const RowOfWallPaper({
    Key key,
    @required this.wallpapers,
  }) : super(key: key);

  final List<int> wallpapers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        padding: EdgeInsets.all(5.0),
        scrollDirection: Axis.horizontal,
        itemCount: wallpapers.length,
        itemBuilder: (BuildContext contex, int index) {
          if (index % 2 == 0) {
            return SingleCard(
              color: Colors.red,
            );
          } else {
            return SingleCard(
              color: Colors.green,
            );
          }
        },
      ),
    );
  }
}

class SingleCard extends StatelessWidget {
  final Color color;
  const SingleCard({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 130,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 230,
            color: color,
          ),
          SizedBox(height: 10.0),
          Text(
            "French\nToast".toUpperCase(),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          )
        ],
      ),
    );
    //
  }
}
