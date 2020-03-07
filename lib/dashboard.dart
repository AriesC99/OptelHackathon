import 'package:flutter/material.dart';
import 'package:optelgoa/attendance.dart';
import 'package:optelgoa/profile.dart';
import 'package:optelgoa/reusable.dart';
import 'constants.dart';
import 'package:optelgoa/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:optelgoa/icon_content.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  Dashboard({this.uName, this.pass});
  static const String id = 'dashboard';
  String uName;
  String pass;
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple, //Color(0xFFb31aff),
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text(
            'PEGASUS',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Reusable(
                colour: activeCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Good Day, name',
                                  //height.toString(),
                                  style: labelTExtStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'What do you want to do???',
                                  style: labelTExtStyle,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Reusable(
                onpress: () {
                  Fluttertoast.showToast(msg: "Checkin Time Recorded");
                },
                colour: activeCardcolor,
                cardchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'You havent checked in yet??????',
                                  style: labelTExtStyle,
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text('CHECK IN', style: labelTExtStyle)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                      onpress: () {
                        Navigator.pushNamed(context, Profile.id);
                      },
                      colour: activeCardcolor,
                      cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'PROFILE',
                              style: labelTExtStyle,
                            ),
                          ])),
                ),
                Expanded(
                  child: Reusable(
                      onpress: () {
                        Navigator.pushNamed(context, Attendance.id);
                      },
                      colour: activeCardcolor,
                      cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'ATTENDANCE',
                              style: labelTExtStyle,
                            ),
                          ])),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onpress: () {
                      Fluttertoast.showToast(msg: "Checkout Time Recorded");
                    },
                    colour: activeCardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'CHECKOUT',
                          style: labelTExtStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onpress: (){
                      Navigator.pop(context);
                    },
                    colour: activeCardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'LOGOUT',
                          style: labelTExtStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
