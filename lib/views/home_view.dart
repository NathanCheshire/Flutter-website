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

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

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
                    top: 50, bottom: 50, left: 20, right: 20),
                child: ListView(
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  children: [
                    WidthSep("Home", MediaQuery.of(context).size.width - 40),
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
                                  style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                )
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
                                )
                            ),
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
                                )
                            ),
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
                                )
                            ),
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
                                )
                            ),
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
