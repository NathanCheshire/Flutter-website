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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/MSU.svg",
                              width: 150,
                              height: 150,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "Hello, my name's Nathan Cheshire, " +
                                      "you can call me Nate if you like, and I " +
                                      "attend Mississippi State University (Baseball National " +
                                      "Champions for the NCAA 2021 season might I add). I chose " +
                                      "MSU because of the excellent engineering programs and " +
                                      "have chosen to major in Software Engineering and Mathematics.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.white60,
                                  ),
                                ),
                              ),
                            )
                          ],
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
                          width: 0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/Flutter.svg",
                                  width: 150,
                                  height: 150,
                                ),
                                SizedBox(width: 80,),
                                SvgPicture.asset(
                                  "assets/Dart.svg",
                                  width: 150,
                                  height: 150,
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "I chose to write this website using flutter for a few reasons." +
                                      " The first being the power of flutter. Not only is it a UI framework" +
                                      " for the web, iOS, Android, and desktop, but it is also a combination" +
                                      " of an extremely high performance graphics engine and the language dart" +
                                      " which compiles to native machine ARM64 or x86/64 code meaning faster and" +
                                      " still beautiful graphics",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.white60,
                                  ),
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
