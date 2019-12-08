import 'package:flutter/material.dart';

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
