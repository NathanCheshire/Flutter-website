import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyselfSection extends StatelessWidget {
  const MyselfSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabContainerColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        //main list view to hold entire scroll, replace with tab view
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 50),
                  child: Text("Nathan Cheshire",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pressStart2p(
                        textStyle: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 10, left: 0, right: 0),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 80,
                height: 3,
                color: Colors.white,
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                      "Greetings and welcome to my personal webapp portfolio! " +
                          "I attend Mississippi State University for software " +
                          "engineering and mathematics. I enjoy body building and " +
                          "fitness, programming, and hiking in my free time. I am very" +
                          " proud of two awards in particular which I have achieved. " +
                          "Those awards are the highest rank a Boy Scout can earn," +
                          " that of Eagle Scout, and second degree Black Belt in Taekwondo." +
                          " Additionally, I'm an INFJ-A Meyers-Briggs type and a type one enneagram.",
                      style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/Flutter.svg",
                  width: 150,
                  height: 150,
                ),
                SizedBox(width: 40),
                SvgPicture.asset(
                  "assets/FireBase.svg",
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                      "I chose to write this website using Flutter/Firebase for a few reasons." +
                          " The first being the power of Flutter. Not only is it a UI framework" +
                          " for the web, iOS, Android, and desktop, but it is also a combination" +
                          " of an extremely high performance graphics engine and the language Dart" +
                          " which compiles to native machine ARM64 or x86/64 code meaning faster rendering.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
