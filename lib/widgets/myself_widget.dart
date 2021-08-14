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
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        //main list view to hold entire scroll, replace with tab view
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
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
                SvgPicture.asset(
                  "assets/Dart.svg",
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
                          " which compiles to native machine ARM64 or x86/64 code meaning faster rendering",
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
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('CyderIcon.png'), fit: BoxFit.fill),
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                      "Let me tell you about my favorite side project, Cyder! " +
                          "Cyder is a multipurpose tool written entirely in regular" +
                          " Java without any modern GUI libraries or Gradle UI dependencies." +
                          " I avoided using FXML or any GUI libraries for no reason other " +
                          "than I started this project when I didn't know what those were" +
                          " much less Gradle. Over the years this project has evolved and" +
                          " grown and now contains over 20,000 lines of Java. The feature" +
                          " I am most proud of is it's ability to webscrape YouTube for" +
                          " the first video resulting from a user query such as \"parallel" +
                          " universe tevvez\" and from the returned HTML, find the first" +
                          " UUID. The program then constructs the videoID and gives it to " +
                          "FFMPEG/YouTube-DL. This then converts and downloads the YouTube" +
                          " video and saves it as an mp4. FFMPEG then extracts the audio" +
                          " from this mp4 and the old mp4 is deleted. Now having the audio," +
                          " it is added to Cyder's custom audio player's queue to be played" +
                          " as soon as any audio currently playing finishes. Below is a picture" +
                          " of the program handling a user's input and playing the resulting audio.",
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
            Center(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 1079.0,
                    height: 608.0,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Cyder.png'), fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
