import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/side_projects.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/svg.dart';
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
          length: 6,
          child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 120,
                backgroundColor: Color.fromRGBO(22, 22, 22, 1),
                foregroundColor: Colors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    createLogo(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: GestureDetector(
                        onTap: (() {
                          _launchInBrowser(
                              "http://www.github.com/NathanCheshire");
                        }),
                        child: SvgPicture.asset(
                          "assets/GitHubheader.svg",
                          width: 60,
                          height: 60,
                        ),
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
                      "Side Projects",
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
              SideProjectsSection(tabContainerColor: tabContainerColor),
              ResumeSection(tabContainerColor: tabContainerColor),
              ContactSection(tabContainerColor: tabContainerColor),
            ]),
            bottomNavigationBar: BottomWidget(),
          )),
      debugShowCheckedModeBanner: false,
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    }
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

Widget createLogo() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          height: 50,
          width: 245,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          )),
      Container(
          height: 45,
          width: 240,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(22, 22, 22, 1),
                Color.fromRGBO(22, 22, 22, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          )),
      Padding (
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: Colors.white,
                ),
                children: [
              TextSpan(
                text: "Nat",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: Color(0xFF8879F7),
                ),
              ),
              TextSpan(
                text: "han",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "Che",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: Color(0xFF8879F7),
                ),
              ),
              TextSpan(
                text: "shire",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  color: Colors.white,
                ),
              ),
              TextSpan(text: ".com"),
            ])),
      )
    ],
  );
}
