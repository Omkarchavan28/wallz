import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  static const List<String> wallpapers = [
    'assets/wal1.jpg',
    'assets/wal2.jpg',
    'assets/wal3.jpg',
    'assets/wal4.jpg',
    'assets/wal5.png',
    'assets/wal6.jpg',
    'assets/wal7.jpg',
    'assets/wal8.jpg',
    'assets/wal9.jpg'
  ];

  final Color color;
  const SingleCard({Key key, this.color, this.index}) : super(key: key);
  final int index;
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
            decoration: BoxDecoration(
              // color: color,
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage(wallpapers[index]),

                // AssetImage(wallpapers[_random.nextInt(wallpapers.length)]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Wallpaper $index".toUpperCase(),
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
