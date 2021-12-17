import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideProjectsSection extends StatelessWidget {
  final Color tabContainerColor;

  const SideProjectsSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.tabContainerColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SeparatingLine(description: "Cyder"),
              PaddedDescription(
                  text:
                      "Cyder is a multipurpose tool with it's own UI library written on top of Swing/AWT. No external UI libraries or tools for Java such as FXML were used for the creation of this project. I have been working on Cyder since 2017 (as long as I've known Java). The program itself contains over 35,000 lines of code and can accomplish a vast amount of tasks. See the screnshots below to see a few of my favorite things about Cyder. Also be sure to checkout the GitHub."),
                      PaddedPNG(image: "assets/Console.png", width: 1081, height: 608),
                      PaddedPNG(image: "assets/Weather.png", width: 480, height: 640),
              SeparatingLine(description: "StudentScraper"),
              SeparatingLine(description: "Punch"),
            ],
          ),
        ));
  }
}

class SeparatingLine extends StatelessWidget {
  final String description;
  const SeparatingLine({
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  description,
                  style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(
                      fontSize: 28,
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
        ],
      ),
    );
  }
}

class PaddedDescription extends StatelessWidget {
  final String text;
  const PaddedDescription({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Text(text,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoCondensed(
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
        )));
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
