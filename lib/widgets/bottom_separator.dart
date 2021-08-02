import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullWidthSep extends StatelessWidget {
  final String descriptor;
  final double width;
  FullWidthSep(this.descriptor, this.width);
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10, left: 0, right: 0),
            child: Column(
              children: [
                if (descriptor.length != 0)
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      descriptor,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Color.fromRGBO(127, 142, 158, 1),
                      ),
                    ),
                  ),
                Container(
                  alignment: Alignment.center,
                  width: this.width == 0 ? MediaQuery.of(context).size.width : this.width,
                  height: 3,
                  color: Color.fromRGBO(127, 142, 158, 1),
                ),
              ],
            ),
          ),
        ]);
  }
}
