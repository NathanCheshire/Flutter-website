import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GitHubCard extends StatelessWidget {
  final String title;
  final String description;
  final String commits;
  final String language;

  const GitHubCard({
    required this.title,
    required this.description,
    required this.commits,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 5;
    double cardHeight = MediaQuery.of(context).size.width / 4;

    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
          height: cardWidth,
          width: cardHeight,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF2A5470 ),
                Color(0xFF4C4177),
                //Color(0xFFffaf7b)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: SingleChildScrollView(
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
                  height: 30,
                ), //spac
                Container(
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
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      this.commits,
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
          )),
    );
  }
}
