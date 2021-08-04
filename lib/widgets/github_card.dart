import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GitHubCard extends StatelessWidget {
  final String title;
  final String description;
  final String commits;

  const GitHubCard({
    required this.title,
    required this.description,
    required this.commits,
  });

  @override
  Widget build(BuildContext context) {
    int zeroOrOne = new Random().nextInt(2);
    double cardWidth = MediaQuery.of(context).size.width / (zeroOrOne == 0 ? 4 : 5);
    double cardHeight = MediaQuery.of(context).size.width / (zeroOrOne == 1 ? 4 : 5);

    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
          height: cardWidth,
          width: cardHeight,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(40, 47, 67, 1),
                Color.fromRGBO(40, 47, 67, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
          child: Column(
            //column holds all text on container
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ), //spacer
              Container(
                width: cardWidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Multipurpose tool written entirely in Java without FXML or other modern GUI dependencies (custom UI library built over Swing/AWT).",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Colors.white60,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 2,
              ),

              Expanded(
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      this.commits,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ],
                )),
              ),
            ],
          )),
    );
  }
}
