import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomBoxArt extends StatelessWidget {
  const BottomBoxArt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 100,
            width: 100,
            color: Color.fromRGBO(127, 142, 158, 1),
          ),
          Container(
            height: 98,
            width: 98,
            color: Color.fromRGBO(19, 19, 35, 1),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    Container(
                        width: 68,
                        height: 68,
                        color: Color.fromRGBO(127, 142, 158, 1)),
                    Container(
                      width: 66,
                      height: 66,
                      color: Color.fromRGBO(19, 19, 35, 1),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  color: Color.fromRGBO(127, 142, 158, 1),
                                ),
                                Container(
                                  width: 46,
                                  height: 46,
                                  color: Color.fromRGBO(19, 19, 35, 1),
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                width: 26,
                                                height: 26,
                                                color: Color.fromRGBO(127, 142, 158, 1),
                                              ),
                                              Container(
                                                width: 24,
                                                height: 24,
                                                color: Color.fromRGBO(
                                                    19, 19, 35, 1),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: Container(
                                                    width: 14,
                                                    height: 14,
                                                    color: Color.fromRGBO(127, 142, 158, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ]));
  }
}
