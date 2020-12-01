import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/admin/adminMain_screen.dart';
import 'package:pinsaderoma/navigator/about_screen.dart';
import '../autentication/landingscreen.dart';


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
      //home: LandingPage(),
      //home: PurchaseMain(),
      home: AdminMain(),
      routes: {
        AboutScreen.id: (context) => AboutScreen();

      },
    );
  }
}


