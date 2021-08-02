import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(37, 44, 72, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(127, 142, 158, 1),
                        radius: 30,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(37, 44, 72, 1),
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
            Wrap(
              children: [
                buildNavBarItem("Home", 0),
                SizedBox(width: 40),
                buildNavBarItem("GitHub", 1),
                SizedBox(width: 40),
                buildNavBarItem("Experience", 2),
                SizedBox(width: 40),
                buildNavBarItem("Resume", 3),
                SizedBox(width: 40),
                buildNavBarItem("Contact", 4),
                SizedBox(width: 40),
              ],
            )
          ],
        ));
  }

  Widget buildNavBarItem(String title, int index) {
    return Container(
      decoration: BoxDecoration(
        border: index == currentIndex
            ? Border(
                bottom: BorderSide(
                color: Color.fromRGBO(127, 142, 158, 1),
                width: 3.0,
              ))
            : null,
      ),
      child: new GestureDetector(
        onTap: () {
          setCurrentIndex(index);
        },
        child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
          color: Color.fromRGBO(127, 142, 158, 1),
        ),
      ),
      )
    );
  }
}

