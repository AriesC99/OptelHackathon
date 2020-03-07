
import 'package:flutter/material.dart';
import 'package:optelgoa/adminpage.dart';
import 'package:optelgoa/roundedbutton.dart';
import 'package:optelgoa/constants.dart';

class AdminLogin extends StatefulWidget {
  static const id = 'login';
  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  String adminid;
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
                    adminid = value;
                  },
                  decoration:
                      ktextfield.copyWith(hintText: 'ENTER YOUR ADMIN ID')),
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
                onPressed: (){
                  Navigator.pushNamed(context, AdminPAge.id);
                },
                title: 'LOG IN',
                colur: Color(0xFF1CE3B1),
              ),
            ],
          ),
        ),
      
    );
  }
}
