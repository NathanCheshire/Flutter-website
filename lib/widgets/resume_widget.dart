import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            width: 600,
                            height: 850,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/resume.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: OutlinedButton(
                            onPressed: () {
                              _launchInBrowser(
                                  "https://drive.google.com/drive/folders/1VmZVYama4IkFXuwj--2Ju-5g_RmxlMD7?usp=sharing");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Official Resume Drive',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 3.0, color: Colors.white)),
                          ),
                        )
                      ]),
                  SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/google-drive.svg",
                          width: 150, height: 150)
                    ],
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
