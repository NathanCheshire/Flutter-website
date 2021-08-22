import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabContainerColor,
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience working with Microsoft command prompt/powershell and the Linux termainal." +
                            " Experience scripting using bash and batch. Experience using all three operating systems" +
                            ", Windows, OS X, and the linux flavors Ubuntu and CentOS, and their respective uses.",
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
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Over five years of experience using Java for work, " +
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
                  width: MediaQuery.of(context).size.width * .75,
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
                        textAlign: TextAlign.center,
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
                  width: MediaQuery.of(context).size.width * .75,
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
                  width: MediaQuery.of(context).size.width * .75,
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
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using Python to complete general side projects." +
                            " I use this language if I need to script up a simple tool quickly. " +
                            "Light experience using Tensorflow/Keras and other libraries to complete a facial" +
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
                        image: AssetImage('assets/Matlab.png'),
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
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using Matlab to manipulate data" +
                            " stored in netCDF format. Experience producing contour plots" +
                            " using Matlab. Experience scripting in Matlab to correct data," +
                            " track ocean currents, monitor variables such as surface velocity," +
                            " salinity, and temperature, and deal with layers.",
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
                  width: MediaQuery.of(context).size.width * .75,
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
                  width: MediaQuery.of(context).size.width * .75,
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
                        textAlign: TextAlign.center,
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
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience writing in raw x86_64 and PIC24 (microcontroller) assembly. Knowledge of" +
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
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SvgPicture.asset(
                    "assets/Flutter.svg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using Flutter to create iOS/Android apps and for web " +
                            "development. This webapp is written using flutter and the mobile app" +
                            " \"Swapps\" which I have worked on is written using flutter.",
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
                Center(
                  child: SvgPicture.asset(
                    "assets/React.svg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using React for basic component/web development." +
                            "Currently I am working on recreating this very website using" +
                            " the React framework and will link to it when it is completed.",
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
                Center(
                  child: SvgPicture.asset(
                    "assets/Node.svg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using Node and npm for their respective purposes such as client/server programming for native/web apps.",
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
                Center(
                  child: SvgPicture.asset(
                    "assets/Html.svg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using HTML(5) for general purpose front-end" +
                            " development. Understanding of language and how to write" +
                            " properly for integration with CSS.",
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
                Center(
                  child: SvgPicture.asset(
                    "assets/CSS.svg",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                        "Experience using CSS to decorate HTML and style elements." + 
                        " Experience making animations and complex designs using CSS." + 
                        " Experience using CSS in all three possible ways: internal," + 
                        " external, and inline.",
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
      )),
    );
  }
}
