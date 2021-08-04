import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(37, 44, 72, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Wrap(
              children: [
                Padding (
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        "Webapp GitHub Source: https://github.com/NathanCheshire/Flutter-website",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding (
                  padding: const EdgeInsets.only(top: 30, right: 15),
                  child: Icon(
                    Icons.speaker_notes,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Padding (
                  padding: const EdgeInsets.only(right: 40),
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Questions, comments, concerns? DM me through the website using your account (go ahead and create one if you haven't yet)",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
