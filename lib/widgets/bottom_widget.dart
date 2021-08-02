import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_decorator.dart';
import 'bottom_separator.dart';

// ignore: camel_case_types
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(37,44,72, 1),
      child: Column(
        children: [
          FullWidthSep(),
          Padding (
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomDecorator(),
                SizedBox(
                  width: 40,
                ),
                Container (
                  width: 300,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Webapp GitHub Source: https://github.com/NathanCheshire/Flutter-website",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Color.fromRGBO(127, 142, 158, 1),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.speaker_notes,
                      color: Color.fromRGBO(127, 142, 158, 1),
                      size: 40,
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Questions, comments, concerns? DM me through the website using your account (go ahead and create one if you haven't yet)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Color.fromRGBO(127, 142, 158, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                BottomDecorator(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
