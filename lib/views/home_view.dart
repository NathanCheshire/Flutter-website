import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_website/entities/repo.dart';
import 'package:flutter_website/widgets/width_separator.dart';
import 'package:flutter_website/widgets/bottom_widget.dart';
import 'package:flutter_website/widgets/github_card.dart';
import 'package:flutter_website/widgets/nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  final controller = ScrollController();

  static final String reposString =
      'https://api.github.com/users/nathancheshire/repos';

  static Future<List<Repo>> getRepos() async {
    http.Response response = await http.get(Uri.parse(reposString));

    if (response.statusCode == 200) {
      List<Repo> repoList;
      repoList = (json.decode(response.body) as List)
          .map((i) => Repo.fromJson(i))
          .toList();

      return repoList;
    } else {
      throw Exception('Failed to load repos');
    }
  }

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
                    top: 0, bottom: 0, left: 20, right: 20),
                child: ListView(
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  children: [
                    WidthSep("Home", MediaQuery.of(context).size.width - 40),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/BlackBelt.svg",
                          width: 150,
                          height: 150,
                        ),
                        SizedBox(width: 50,),
                        SvgPicture.asset(
                          "assets/Dumbell.svg",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Greetings and welcome to my personal webapp portfolio! " +
                                    "I attend Mississippi State University for software " +
                                    "engineering and mathematics. I enjoy body building and fitness, programming, and hiking in my free time. I'm an Eagle Scout and have a second degree black belt in taekwondo. I'm an INFJ-A Meyers-Briggs type and a type one enneagram.",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.end,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Flutter.svg",
                          width: 150,
                          height: 150,
                        ),
                        SvgPicture.asset(
                          "assets/Dart.svg",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 0,
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
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: WidthSep(
                            "GitHub", MediaQuery.of(context).size.width - 40)),
                    FutureBuilder(
                        future: getRepos(),
                        builder: (context, AsyncSnapshot snap) {
                          if (!snap.hasData) {
                            return Center(child: CircularProgressIndicator());
                          } else {
                            List<GitHubCard> cards = [];

                            for (var i = 0; i < snap.data.length; i++) {
                              if (snap.data[i].name != null &&
                                  snap.data[i].description != null &&
                                  snap.data[i].language != null) {
                                cards.add(new GitHubCard(
                                    title: snap.data[i].name,
                                    description: snap.data[i].description,
                                    language:
                                        "Language: " + snap.data[i].language));
                              }
                            }
                            return Wrap(
                                alignment: WrapAlignment.center,
                                spacing: 50,
                                runSpacing: 50.0,
                                direction: Axis.horizontal,
                                children: cards);
                          }
                        }),
                    Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: WidthSep("Experience",
                            MediaQuery.of(context).size.width - 40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              color: Colors.white,
                            ),
                            SvgPicture.asset(
                              "assets/Terminal.svg",
                              width: 100,
                              height: 100,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience working with Microsoft command prompt/powershell and the Linux termainal." +
                                    " Experience scripting using bash and batch. Experience using all three operating systems" +
                                    " ,Windows, OS X, and the linux flavors Ubuntu and CentOS, and their respective uses.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Java.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Over five years of experience using java for work, " +
                                    "personal projects, and general scripting. This is the " +
                                    "first language I learned back in 2017 when I took AP computer" +
                                    " science in highschool. Thus, it should be no suprise that" +
                                    " Java is my favorite language as it will forever hold a" +
                                    " special place in my heart as the language that made me" +
                                    " choose software engineering as a major.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      //todo make method to return widget for these two rows and padding
                      // on top and bottom of 40 each, using flaticon.com for svg searching
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/CPP.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using C++ for general coding and to complete" +
                                    " homework for the following classes: Data Structures," +
                                    " Algorithms, Microprocessors (translating C++ to PIC24 Assembly)" +
                                    ", Discrete Systems, and Software Testing and QA. " +
                                    "Some of the assignments I have used C++ for include but" +
                                    " are not limited to: a Binary Search Tree, an Adelson Velsky" +
                                    " Landis Tree, and an AVL post order traversal saver/loader." +
                                    " See the GitHub tab or my GitHub page for more information.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      //todo make method to return widget for these two rows and padding
                      // on top and bottom of 40 each, using flaticon.com for svg searching
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            child: Text("C",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 100,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using C to write operating systems" +
                                    " homework and study the Linux kernel. Experience" +
                                    " using C for general purpose programming." +
                                    " With this comes an accompanying knowledge" +
                                    " of the topic of operating systems. I hope one day to" +
                                    " attempt to write a simple one from scratch and" +
                                    " implement simple features such as a paging and a" +
                                    " Native GUI Library to test my knowlege. A few of the projects" +
                                    " I've used C for include: testing timings on a custom made" +
                                    " thread-safe linked list versus a non-locking linked list," +
                                    " timing Linux system calls such as fork, using pipes, and" +
                                    " timing functions such as qsort.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Postgres.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using relational databases such as Postgres " +
                                    "and MySQL to perform standard CRUD (Create, Read, Update, Delete) " +
                                    "operations. Experience writing querries, creating databases, and " +
                                    "using databases with languages such as Python and Java.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Python.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using Python to complete general side projects." +
                                    " I use this language if I need to script up a simple tool quickly. " +
                                    "Experience using Tensorflow/keras and other libraries to complete a facial" +
                                    " recognition project. " +
                                    "I am extemely comforable using Python to complete any project.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150.0,
                          height: 150.0,
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('Matlab.png'),
                                fit: BoxFit.fill),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using Matlab to maniuplate data" +
                                    " stored in netCDF format. Experience producing contour plots" +
                                    " using Matlab. Experience scripting in Matlab to correct data," +
                                    " track currents, and deal with layers.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Mathematica.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using Wolfram's Mathematica to complete various" +
                                    " calculus and differential equation problems such as plotting slope fields," +
                                    " solving differential equations by method such as undetermined coefficients," +
                                    " variation of parameters, and laplace transforms, and modeling flow rates" +
                                    " regarding solution concentration.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/Office.svg",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience using Microsoft Office products such as " +
                                    "Word, Excel, Power Point, and Project. Word skill level 9/10," +
                                    " Excel skill level 7/10, Power point skill level 10/10.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 300,
                            height: 100,
                            child: Text("x86_64 and PIC24",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 85,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                                "Experience writing in pure x86_64 and PIC24 (microcontroller) assembly. Knowledge of" +
                                    " the instructions sets. Knowledge on how to read assembly instruciton sets and properly write" +
                                    " in assembly.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: WidthSep(
                            "Resume", MediaQuery.of(context).size.width - 40)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Click here to download my resume',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 3.0, color: Colors.white)),
                            ),
                          )
                        ]),
                    Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: WidthSep(
                            "Contact", MediaQuery.of(context).size.width - 40)),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (() {
                              _launchInBrowser("");
                            }),
                            child: SvgPicture.asset(
                              "assets/Gmail.svg",
                              width: 75,
                              height: 75,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 30.0),
                            child: Text("Nate@NathanCheshire.com",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (() {
                                _launchInBrowser("");
                              }),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 74,
                                    height: 74,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  SvgPicture.asset(
                                    "assets/GitHub.svg",
                                    width: 75,
                                    height: 75,
                                  ),
                                ],
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 30.0),
                            child: Text("GitHub.com/NathanCheshire",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: (() {
                                _launchInBrowser("");
                              }),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/Discord.svg",
                                    width: 75,
                                    height: 75,
                                  ),
                                ],
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 30.0),
                            child: Text("Natche#8845",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
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
