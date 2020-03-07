import 'package:flutter/material.dart';
import 'package:optelgoa/constants.dart';
import 'package:optelgoa/reusable.dart';

class Attendance extends StatefulWidget {
  static const String id = 'Attendance';
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text(
            'ATTENDANCE PAGE',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Row(
            //children: <Widget>[
            // Text('Attendance page'),
            Expanded(
              child: Reusable(
                colour: activeCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /* Text(
                      'HEiGHT',
                      style: labelTExtStyle,
                    ), */
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
                                  'NUMBER OF DAYS PRESENT:',
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
                                  'xDAYS',
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
                colour: activeCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    /* Text(
                      'HEiGHT',
                      style: labelTExtStyle,
                    ), */
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
                                  'NUMBER OF DAYS ABSENT:',
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
                                  'yDAYS',
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
          ],
        )
        );
  }
}
