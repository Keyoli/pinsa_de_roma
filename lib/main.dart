import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/autentication/landingscreen.dart';
import 'package:pinsaderoma/Catagore.dart';
import 'package:pinsaderoma/finalproduct.dart';
import 'package:pinsaderoma/mybag.dart';
import 'package:pinsaderoma/products.dart';
import 'package:pinsaderoma/navigator/about.dart';
import 'package:pinsaderoma/navigator/contact.dart';
import 'package:pinsaderoma/navigator/settings.dart';
import 'package:pinsaderoma/proceed.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Divider Color 1
        primaryColor: Colors.lightBlue,
        //Divider Color 2
        accentColor: Colors.red.shade600,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Sans-serif',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 40, 40, 50),
            fontSize: 28.0,
          ),
          headline2: TextStyle(
              fontFamily: 'Segoe',
              color: Colors.white,
              fontSize: 22.0,
          ),
          headline6: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontFamily: 'Calibri'
          ),
          headline5: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              fontFamily: 'Calibri'
          ),
          headline3: TextStyle(
              fontSize: 58.0,
              color: Colors.white,
              fontFamily: 'Segoe',
          ),
          headline4: TextStyle(
              color: Color.fromRGBO(255, 88, 88, 15),
              fontSize: 34.0,
              fontFamily: 'Segoe',
              fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //home: FinalProductMain(),
      //home: LandingPage(),
      //home: CatagoreMain(),
      //home: ProductMain(),
      //home: NavigateAbout(),
      //home: NavigateContact(),
      //home: ProfileSettings(),
      //home: MyBagMain(),
      home: PurchaseMain(),
    );
  }
}


