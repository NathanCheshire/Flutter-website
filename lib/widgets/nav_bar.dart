import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                CircleAvatar(
              backgroundColor: Color.fromRGBO(45, 45, 45, 1),
              backgroundImage: AssetImage("assets/Nathan.png"),
              radius: 35,
          ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
                children: [
                  _NavBarItem("Home"),
                  SizedBox(width: 60),
                  _NavBarItem("Resume"),
                  SizedBox(width: 60),
            ],
            )
        ],)
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  _NavBarItem(this.title);

  Widget build(BuildContext context) {
    return Text(
      title, 
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: "Roboto"
        ),
      );
  }
}

//https://dribbble.com/shots/15137677-My-Personal-Website-Bookmark-Page
//https://pub.dev/packages/flip_card