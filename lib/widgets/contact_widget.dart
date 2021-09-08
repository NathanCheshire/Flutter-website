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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabContainerColor,
      child: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildClickableContact(
                icon: "assets/Gmail.svg",
                text:
                    "Personal: Nathan.Vincent.2.718@gmail.com\nBusiness: Nate@NathanCheshire.com",
                url: "mailto:Nate@NathanCheshire.com",
                excessIconPadding: 20,
              ),
              buildClickableContact(
                icon: "assets/Github.svg",
                text: "GitHub.com/NathanCheshire",
                url: "GitHub.com/NathanCheshire",
                excessIconPadding: 0,
              ),
              buildClickableContact(
                icon: "assets/Discord.svg",
                text: "Natche#8845",
                url: "https://discord.com/app",
                excessIconPadding: 0,
              )
            ],
          ),
        ),
      )),
    );
  }
}

// ignore: camel_case_types
class buildClickableContact extends StatelessWidget {
  final String icon;
  final String text;
  final String url;
  final double excessIconPadding;

  const buildClickableContact(
      {required this.icon,
      required this.text,
      required this.url,
      required this.excessIconPadding});

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    }
  }

  //todo make these pretty cards that are spaced un evenenly

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (url.length > 4) {
          _launchInBrowser(url);
        }
      }),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: excessIconPadding),
                  child: SvgPicture.asset(
                    icon,
                    width: 75,
                    height: 75,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(text,
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
    );
  }
}
