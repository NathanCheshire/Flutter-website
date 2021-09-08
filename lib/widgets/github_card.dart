import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GitHubCard extends StatelessWidget {
  final String title;
  final String description;
  final String language;

  const GitHubCard({
    required this.title,
    required this.description,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    double cardWidth = 256;
    double cardHeight = 320;

    return Container(
      child: Container(
        height: cardWidth,
        width: cardHeight,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(205, 119, 130, 1),
              Color.fromRGBO(89, 85, 161, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                this.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.fade,
              ),
            ),
            SizedBox(
              height: 10,
            ), //spac
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                  width: cardWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          this.description,
                          textAlign: TextAlign.left,
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
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
          ],
        ),
      ),
    );
  }
}
