import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSep extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
      Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width - 100,
          height: 3,
          color: Color.fromRGBO(127, 142, 158, 1),
        ),
      ),
    ]);
  }
}
