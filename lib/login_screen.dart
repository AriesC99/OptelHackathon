import 'package:flutter/material.dart';
import 'package:optelgoa/dashboard.dart';
import 'package:optelgoa/main.dart';
import 'package:optelgoa/roundedbutton.dart';
import 'package:optelgoa/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';

class LoginScreen extends StatefulWidget {
  static const id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String empid;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353F45),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 39.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  empid = value;
                },
                decoration: ktextfield.copyWith(hintText: 'ENTER YOUR EMP ID')),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  password = value;
                },
                decoration:
                    ktextfield.copyWith(hintText: 'ENTER YOUR PASSWORD')),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'LOG IN',
              colur: Color(0xFF1CE3B1),
              onPressed: () async {
                final response = await http.post(
                    'http://${MyApp.ip}/PHP_Codes/Optel/getData.php',
                    body: {"uId": empid});
                var result = json.decode(response.body);

                
                  Fluttertoast.showToast(msg: "Login Successful");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Dashboard(uName: empid, pass: password);
                      },
                    ),
                  );
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
