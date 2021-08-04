import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavigationBar extends StatefulWidget {
  ScrollController controller;

  NavigationBar({
    required this.controller,
  });

  @override
  NavigationBarState createState() =>
      NavigationBarState(controller: controller);
}

class NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;
  ScrollController controller;

  NavigationBarState({
    required this.controller,
  });

  setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
      //also need to scroll to relavent portion
    });
  }

  Widget build(BuildContext context) {
    final String defaultInitials = "UU";

    Future _createUserPopup(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return StatefulBuilder(builder: (context, setState) {
              return AlertDialog(
                backgroundColor: Color.fromRGBO(25, 28, 35, 1),
                content: Container(
                    child: Flexible(
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextField(
                                  autofocus: true,
                                  obscureText: false,
                                  onSubmitted: (_) => {},
                                  onChanged: (String string) => {},
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Username",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextField(
                                  autofocus: false,
                                  obscureText: false,
                                  onSubmitted: (_) => {},
                                  onChanged: (String string) => {},
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Password",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextField(
                                  autofocus: true,
                                  obscureText: true,
                                  onSubmitted: (_) => {},
                                  onChanged: (String string) => {},
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                TextField(
                                  autofocus: true,
                                  obscureText: true,
                                  onSubmitted: (_) => {},
                                  onChanged: (String string) => {},
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w300,
                                  ),
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Looks good",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Inter",
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 12, 10, 12),
                                        child: Text(
                                          "Discard",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      8, 146, 208, 1),
                                                ))),
                                        backgroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                          // ignore: missing_return
                                          (Set<MaterialState> states) {
                                            return Color.fromRGBO(8, 146, 208,
                                                1); // Use the component's default.
                                          },
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop([null]);
                                      },
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 12, 10, 12),
                                        child: Text(
                                          "Create",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      8, 146, 208, 1),
                                                ))),
                                        backgroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                          // ignore: missing_return
                                          (Set<MaterialState> states) {
                                            return Color.fromRGBO(8, 146, 208,
                                                1); // Use the component's default.
                                          },
                                        ),
                                      ),
                                      onPressed: () {
                                        //todo validate data and if valid, email user
                                        Navigator.of(context).pop([null]);
                                      },
                                    ),
                                  ],
                                )
                              ],
                            )))),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(25.0))),
              );
            });
          });
    }

    return Container(
        color: Color.fromRGBO(37, 44, 72, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: new GestureDetector(
                    onTap: () {
                      _createUserPopup(context);
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(37, 44, 72, 1),
                          radius: 28,
                        ),
                        Text(
                          defaultInitials,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Wrap(
              children: [
                buildNavBarItem("Home", 0),
                SizedBox(width: 40),
                buildNavBarItem("GitHub", 1),
                SizedBox(width: 40),
                buildNavBarItem("Experience", 2),
                SizedBox(width: 40),
                buildNavBarItem("Resume", 3),
                SizedBox(width: 40),
                buildNavBarItem("Contact", 4),
                SizedBox(width: 40),
              ],
            )
          ],
        ));
  }

  Widget buildNavBarItem(String title, int index) {
    return Container(
        decoration: BoxDecoration(
          border: index == currentIndex
              ? Border(
                  bottom: BorderSide(
                  color: Colors.white,
                  width: 3.0,
                ))
              : null,
        ),
        child: new GestureDetector(
          onTap: () {
            setCurrentIndex(index);
            controller.animateTo(
              200,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            );
          },
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              color: Colors.white,
            ),
          ),
        ));
  }
}
