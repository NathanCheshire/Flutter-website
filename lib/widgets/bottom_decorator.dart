import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomDecorator extends StatelessWidget {
  const BottomDecorator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Color.fromRGBO(255, 194, 91, 1),
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Color.fromRGBO(37, 44, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: 50,
              height: 50,
              color: Color.fromRGBO(255, 194, 91, 1),
            ),
            Positioned(
                bottom: 50,
                right: 10,
                child: Container(
                  width: 80,
                  height: 30,
                  color: Color.fromRGBO(255, 194, 91, 1),
                ))
          ],
        ));
  }
}
