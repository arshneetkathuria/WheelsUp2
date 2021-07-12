import 'package:flutter/material.dart';
import 'addressDetails.dart';
import 'firstScreen.dart';
//import 'screens/login.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first(),
      // home: addressDetails(),
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Colors.white,
      )
  ));
}

