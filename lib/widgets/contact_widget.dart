import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;

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
      color: tabContainerColor,
      child: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      _launchInBrowser("");
                    }),
                    child: SvgPicture.asset(
                      "assets/Gmail.svg",
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                        "Personal: Nathan.Vincent.2.718@gmail.com\nBusiness: Nate@NathanCheshire.com",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (() {
                      _launchInBrowser("");
                    }),
                    child: SvgPicture.asset(
                      "assets/Github.svg",
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Text("GitHub.com/NathanCheshire",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (() {
                        _launchInBrowser("");
                      }),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/Discord.svg",
                            width: 75,
                            height: 75,
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Text("Natche#8845",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
