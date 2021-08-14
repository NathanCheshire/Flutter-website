import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;
  final double resumeWidth = 897.0;
  final double resumeHeight = 1162.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabContainerColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                          width: resumeWidth / 2,
                          height: resumeHeight / 2,
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('ResumeBlur.png'),
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
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Click here to download my resume',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 3.0, color: Colors.white)),
                        ),
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
