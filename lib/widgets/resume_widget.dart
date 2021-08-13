import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({
    Key? key,
    required this.tabContainerColor,
  }) : super(key: key);

  final Color tabContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: tabContainerColor,
      child: Row(
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
                    side:
                        BorderSide(width: 3.0, color: Colors.white)),
              ),
            )
          ]),
    );
  }
}
