import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(19, 19, 35, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBar(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 125,
                  height: 5,
                  color: Color.fromRGBO(127, 142, 158, 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Text(
                    "Friends",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Color.fromRGBO(127, 142, 158, 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 125,
                  height: 5,
                  color: Color.fromRGBO(127, 142, 158, 1),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
