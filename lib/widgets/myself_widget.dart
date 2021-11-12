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
  //console notification gif
  //show weather widget changing locations gif, pathfinding gif
  //loggin in gif
  //music gif
  //webscapring youtube gif
  //keep temp converter and edit user at bottom

  @override
  Widget build(BuildContext context) {
    var cyderDescription = "Widget explanation from top left to bottom right:\n" +
        "The preferences editor allows a user to change " +
        "properties such as their username, password, preferences, " +
        "weather/ip data keys, console clock format, add/remove " +
        "backgrounds and music, and so much more! The notes " +
        "editor allows a user to add/delete notes which are saved in " +
        "text format. The program will detect unsaved changes and " +
        "make sure the user intends to exit without saving any changes " +
        "if unsaved changes exist. " +
        "The pathfinding visualizer is perhaps one of my favorite widgets. " +
        "Currently it only shows A* with manhattan and euclidean distance " +
        "heuristics as an option. Soon dijkstras, bfs, and dfs will be added. " +
        "Starting on the bottom row is the console. This is where " +
        "all commands are issued and widgets are started. The console " +
        "also keeps track of all other frames via its own taskbar " +
        "as seen on the left. The weather widget shows weather " +
        "data for the detected location. A user may choose " +
        "to spawn multiple weather widgets, however, and also " +
        "change the locations of each. The calculator widget " +
        "has simple input buttons but also supports manual text " +
        "entry for trig functions, pi, e, and so forth. " +
        "The audio widget allows for any mp3 to be played, scrubbed through, " +
        "queued in succession, looped, etc. Lastly, the temperature widget " +
        "allow for any of the main three temperature units to be converted " +
        "into another form.";

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
                        image: AssetImage('assets/CyderIcon.png'),
                        fit: BoxFit.fill),
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
                          " grown and now contains over 27,000 lines of code. The feature" +
                          " I am most proud of is its ability to webscrape YouTube for" +
                          " the first video resulting from a user query. Then, from the returned HTML," +
                          " Cyder locates the first" +
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
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Cyder Desktop\nDrag to scroll across the image",
                    style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 10, left: 0, right: 0),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width - 80,
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                ]),
            PaddedPNG(
                image: "assets/CyderDesktop.png",
                width: 2560.0,
                height: 1440.0),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(cyderDescription,
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
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class PaddedPNG extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  const PaddedPNG({
    required this.image,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: this.width,
            height: this.height,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(this.image), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
