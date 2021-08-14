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
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        //main list view to hold entire scroll, replace with tab view
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
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
                SizedBox(
                  width: 50,
                ),
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
                            "engineering and mathematics. I enjoy body building and " + 
                            "fitness, programming, and hiking in my free time. I am very" + 
                            " proud of two awards in particular which I have achieved. " + 
                            "Those awards are: the highest rank a Boy Scout can earn," + 
                            " that of Eagle Scout, and second degree black belt in Taekwondo." + 
                            " I'm also an INFJ-A Meyers-Briggs type and a type one enneagram.",
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
          ],
        ),
      ),
    );
  }
}
