import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/bottom_widget.dart';
import 'package:flutter_website/widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(19, 19, 35, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavigationBar(),
            bottom_widget()
          ],
        ),
      ),
    );
  }
}