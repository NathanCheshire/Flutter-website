import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
   const HomeView({Key? key}) : super(key: key);

   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       body: Column(
         children: [
           NavigationBar(),
         ],
       ),
     );
   }
}