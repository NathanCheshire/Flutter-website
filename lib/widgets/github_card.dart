import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubCard extends StatelessWidget {
  final String title;
  final String description;
  final String language;
  final String link;
  final String update;

  const GitHubCard({
    required this.title,
    required this.description,
    required this.language,
    required this.link,
    required this.update,
  });

  @override
  Widget build(BuildContext context) {
    double cardWidth = 256;
    double cardHeight = 320;

    var specialTitles = [
      "Cyder",
      "Flutter-website",
      "Punch",
      "AVL-Loader",
      "PacMan",
      "StraightShot",
      "StudentScraper"
    ];

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

    bool special = specialTitles.contains(this.title);
    var colors = [Color.fromRGBO(18, 18, 18, 1), Color.fromRGBO(18, 18, 18, 1)];
    var specialColors = [
      Color.fromRGBO(131, 148, 240, 1),
      Color.fromRGBO(131, 148, 240, 1),
      Color.fromRGBO(162, 149, 229, 1)
    ];

    return GestureDetector(
      onTap: (() {
        _launchInBrowser(this.link);
      }),
      child: Container(
        child: Container(
          height: cardWidth,
          width: cardHeight,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: special ? specialColors : colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            this.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ), //spac
              Flexible(
                //todo this still isn't centered
                child: Center(
                  child: SingleChildScrollView(
                    child: Container(
                      width: cardWidth,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Text(
                              this.description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Roboto",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.language,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.update,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
