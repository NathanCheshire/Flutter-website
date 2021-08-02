import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullWidthSep extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
      Padding(
        padding: EdgeInsets.only(top: 0, bottom: 10, left: 0, right: 0),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 3,
          color: Color.fromRGBO(127, 142, 158, 1),
        ),
      ),
    ]);
  }
}
