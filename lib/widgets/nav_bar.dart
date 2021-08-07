import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigationBar extends StatefulWidget {
  ScrollController controller;

  NavigationBar({
    required this.controller,
  });

  @override
  NavigationBarState createState() =>
      NavigationBarState(controller: controller);
}

class NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;
  ScrollController controller;

  NavigationBarState({
    required this.controller,
  });

  setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
      //also need to scroll to relavent portion
    });
  }

  Widget build(BuildContext context) {
    final String defaultInitials = "NathanCheshire.com";

    return Container(
        color: Color.fromRGBO(37, 44, 72, 1),
        child: Flexible(
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
                          Container(
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.white, Colors.white],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              )),
                          Container(
                              height: 45,
                              width: 215,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(37, 44, 72, 1),
                                    Color.fromRGBO(37, 44, 72, 1)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                              )),
                          Text(
                            defaultInitials,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color: Colors.white,
                            ),
                          )
                        ],
                      ))
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
          ),
        ));
  }

  Widget buildNavBarItem(String title, int index) {
    return Container(
        decoration: BoxDecoration(
          border: index == currentIndex
              ? Border(
                  bottom: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ))
              : null,
        ),
        child: new GestureDetector(
          onTap: () {
            setCurrentIndex(index);
            controller.animateTo(
              200,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              color: Colors.white,
            ),
          ),
        ));
  }
}
