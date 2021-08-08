import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      //todo gesture detector here, fonts for seps, fonts for cards, last updated for cards
                      child: Text(
                          "Click here to view this very webapp's source on GitHub",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 15),
                  child: Icon(
                    Icons.speaker_notes,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                          "Questions, comments, concerns? Reach me at GitHub.com/NathanCheshire or Nathan.Vincent.2.718@gmail.com",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
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
