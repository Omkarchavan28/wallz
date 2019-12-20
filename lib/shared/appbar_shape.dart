import 'package:flutter/material.dart';

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
    bottomRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_right,
  color: Colors.black54,
);
