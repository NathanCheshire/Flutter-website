import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(127, 142, 158, 1),
                    radius: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(19, 19, 35, 1),
                    radius: 28,
                  ),
                  Text(
                    "NC",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Color.fromRGBO(127, 142, 158, 1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            _NavBarItem("Home", true),
            SizedBox(width: 40),
            _NavBarItem("GitHub", false),
            SizedBox(width: 40),
            _NavBarItem("Experience", false),
            SizedBox(width: 40),
            _NavBarItem("Resume", false),
            SizedBox(width: 40),
            _NavBarItem("Contact", false),
            SizedBox(width: 40),
          ],
        )
      ],
    ));
  }
}

// ignore: must_be_immutable
class _NavBarItem extends StatelessWidget {
  final String title;
  bool currentTab;
  _NavBarItem(this.title, this.currentTab);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: currentTab
            ? Border(
                bottom: BorderSide(
                color: Color.fromRGBO(127, 142, 158, 1),
                width: 3.0,
              ))
            : null,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
          color: Color.fromRGBO(127, 142, 158, 1),
        ),
      ),
    );
  }
}

//https://dribbble.com/shots/15137677-My-Personal-Website-Bookmark-Page
//https://pub.dev/packages/flip_card