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
  @override
  Widget build(BuildContext context) {
    const Color tabContainerColor = Color.fromRGBO(34, 34, 34, 1);

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
                backgroundColor: Color.fromRGBO(22, 22, 22, 1),
                foregroundColor: Colors.white,
                title: Row(
                  children: [
                    Padding(
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
                                    Color.fromRGBO(22, 22, 22, 1),
                                    Color.fromRGBO(22, 22, 22, 1)
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
                      ),
                    ),
                  ],
                ),
                bottom: const TabBar(indicatorColor: Colors.white, tabs: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Myself",
                      overflow: TextOverflow.fade,
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
                      overflow: TextOverflow.fade,
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
                      overflow: TextOverflow.fade,
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
                      overflow: TextOverflow.fade,
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
                      overflow: TextOverflow.fade,
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

class Line extends StatelessWidget {
  final Color color;

  Line({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 10,
      width: MediaQuery.of(context).size.width - 300,
    );
  }
}

class SineWave extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();

    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
