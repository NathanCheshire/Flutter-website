import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_website/widgets/full_width_separator.dart';
import 'package:flutter_website/widgets/bottom_widget.dart';
import 'package:flutter_website/widgets/github_card.dart';
import 'package:flutter_website/widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = ScrollController();

  getController() {
    return this.controller;
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(29, 34, 55, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBar(controller: controller),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, bottom: 50, left: 20, right: 20),
                child: ListView(
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  children: [
                    FullWidthSep("Home",MediaQuery.of(context).size.width - 40),
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
                                  "Greetings and welcome to my personal webapp portfolio! " +
                                      "I attend Mississippi State University (Baseball National " +
                                      "Champions for the NCAA 2021 season might I add) for software " + 
                                      "engineering and mathematics. I chose " +
                                      "MSU because of the excellent engineering programs, great community," + 
                                      " and the scholarships I received, among of which was a scholarhsip for " + 
                                      "being an Eagle Scout which I was very happy to learn about.",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.white,
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
                                  "I chose to write this website using Flutter/Firebase for a few reasons." +
                                      " The first being the power of Flutter. Not only is it a UI framework" +
                                      " for the web, iOS, Android, and desktop, but it is also a combination" +
                                      " of an extremely high performance graphics engine and the language Dart" +
                                      " which compiles to native machine ARM64 or x86/64 code meaning faster rendering",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    FullWidthSep("GitHub", MediaQuery.of(context).size.width - 40),
                    Container(
                      child: Wrap (
                        alignment: WrapAlignment.center,
                        direction: Axis.horizontal,
                        children: [
                          Padding (
                            padding: const EdgeInsets.all(10.0),
                            child: GitHubCard(title: "Cyder", 
                            description: "Multipurpose tool written entirely in Java without FXML or other modern GUI dependencies (custom UI library built over Swing/AWT).",
                             commits: " 779 commits"),
                          ),
                           Padding (
                            padding: const EdgeInsets.all(10.0),
                            child: GitHubCard(title: "Cyder", 
                            description: "Multipurpose tool written entirely in Java without FXML or other modern GUI dependencies (custom UI library built over Swing/AWT).",
                             commits: " 779 commits"),
                          ),
                           Padding (
                            padding: const EdgeInsets.all(10.0),
                            child: GitHubCard(title: "Cyder", 
                            description: "Multipurpose tool written entirely in Java without FXML or other modern GUI dependencies (custom UI library built over Swing/AWT).",
                             commits: " 779 commits"),
                          ),
                        ],
                      ),
                    )
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
