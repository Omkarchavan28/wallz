import 'package:flutter/material.dart';
import 'package:wallz/src/single_card.dart';

class RowOfWallPaper extends StatefulWidget {
  const RowOfWallPaper({Key key, @required this.count}) : super(key: key);

  final List<int> count;

  @override
  _RowOfWallPaperState createState() => _RowOfWallPaperState();
}

class _RowOfWallPaperState extends State<RowOfWallPaper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        padding: EdgeInsets.all(5.0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.count.length,
        itemBuilder: (BuildContext contex, int index) {
          // print(wallpapers[index]);
          if (index % 2 == 0) {
            return SingleCard(
              index: index,
              color: Colors.amber,
            );
          } else {
            return SingleCard(
              index: index,
              color: Colors.green,
            );
          }
        },
      ),
    );
  }
}
