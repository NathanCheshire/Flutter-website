import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                            width: 742.0 / 2,
                            height: 1052.0 / 2,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/ResumeBlur.png'),
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
                              _launchInBrowser("https://drive.google.com/drive/folders/1VmZVYama4IkFXuwj--2Ju-5g_RmxlMD7?usp=sharing");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Click here to view my official resume',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 3.0, color: Colors.white)),
                          ),
                        )
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
