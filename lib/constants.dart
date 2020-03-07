import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.white54),
  border: InputBorder.none,
);
const inactiveColor = Color(0xFF111328);
//const activeCardcolor = Color(0xFF1D1E33);
const activeCardcolor=Colors.black54;
const bottomcontainerheight = 60.0;
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.white/*(0xFFF8A95F)*/, width: 2.0),
  ),
);
const labelTExtStyle = TextStyle(fontSize: 18.0, color: Colors.white);

const ktextfield = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  hintText: 'Enter your value',
  hintStyle: TextStyle(color: Colors.grey), 
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  /* border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ), */
  /* enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
   *///),
 /*  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  */ //),
);
