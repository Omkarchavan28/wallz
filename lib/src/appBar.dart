// Ketan Choyal
// GitHub Link to this Project:
// ketanchoyal/custom_top_bar

import 'package:flutter/material.dart';

final Color color1 = Color(0xffB5192F);
final Color color2 = Color(0xffE21F3D);
final Color color3 = Color(0xffFE1949);
final Color color4 = Color(0xffF0631C);

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  // final Widget child;
  // final Function onPressed;
  // final Function onTitleTapped;

  @override
  final Size preferredSize;
  TopBar({
    @required this.title,
    // @required this.child,
    // @required this.onPressed,
    // this.onTitleTapped
  }) : preferredSize = Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: color2,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: 'topBarBtn',
                  child: Card(
                    elevation: 10,
                    shape: kBackButtonShape,
                    child: MaterialButton(
                      height: 70,
                      minWidth: 50,
                      elevation: 10,
                      shape: kBackButtonShape,
                      onPressed: () {},
                      // onPressed: onPressed,
                      child: kBackBtn,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 50,
                // ),
                Hero(
                  tag: 'title',
                  transitionOnUserGestures: true,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      // onTap: onTitleTapped,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 70,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                // color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
