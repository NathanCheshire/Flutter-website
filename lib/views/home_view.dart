import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_website/widgets/bottom_widget.dart';
import 'package:flutter_website/widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(29, 34, 55, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, bottom: 50, left: 20, right: 20),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        Text(
                          "Place Holder Text",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Color.fromRGBO(127, 142, 158, 1),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          "Place Holder Text",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Color.fromRGBO(127, 142, 158, 1),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset("assets/MSU.svg"),
                            Container(
                              width: 400,
                              child: Text(
                                "Hello, my name is Nathan Cheshire and I attend Mississippi State University (National Champions might I add)",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto",
                                  color: Color.fromRGBO(127, 142, 158, 1),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomWidget(),
          ],
        ),
      ),
    );
  }
}
