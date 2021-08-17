import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(37, 44, 72, 1),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
        ),
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  width: 300,
                  height: 50,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      //todo gesture detector here, fonts for seps, fonts for cards, last updated for cards
                      child: GestureDetector(
                        onTap: (() {
                          _launchInBrowser(
                              "https://github.com/NathanCheshire/Flutter-website");
                        }),
                        child: Text(
                            "Click here to view this webapp's source on GitHub",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )),
                      )),
                ),
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                            "Questions, comments, or concerns? Contact me by" +
                                " checking out the contact section in the navigation bar",
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
            ],
          ),
        ),
      ),
    );
  }
}
