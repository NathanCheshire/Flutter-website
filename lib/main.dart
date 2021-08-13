import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/bottom_widget.dart';
import 'package:flutter_website/widgets/contact_widget.dart';
import 'package:flutter_website/widgets/experience_widget.dart';
import 'package:flutter_website/widgets/github_widget.dart';
import 'package:flutter_website/widgets/myself_widget.dart';
import 'package:flutter_website/widgets/resume_widget.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color tabContainerColor = Color.fromRGBO(29, 34, 55, 1);

    return MaterialApp(
      title: 'NathanCheshire',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 120,
                backgroundColor: Color.fromRGBO(37, 44, 72, 1),
                foregroundColor: Colors.white,
                title: Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
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
                          "NathanCheshire.com",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
                bottom: const TabBar(indicatorColor: Colors.white, tabs: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Myself",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "GitHub",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Experience",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Resume",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ])),
            body: TabBarView(children: [
              MyselfSection(tabContainerColor: tabContainerColor),
              GitHubSection(tabContainerColor: tabContainerColor),
              ExperienceSection(tabContainerColor: tabContainerColor),
              ResumeSection(tabContainerColor: tabContainerColor),
              ContactSection(tabContainerColor: tabContainerColor),
            ]),
            bottomNavigationBar: BottomWidget(),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
