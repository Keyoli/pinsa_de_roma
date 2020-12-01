import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/screens/bag_screen.dart';
import 'package:pinsaderoma/screens/catagore_screen.dart';
import 'package:pinsaderoma/screens/navigation_screens/about_screen.dart';
import 'package:pinsaderoma/screens/navigation_screens/settings_screen.dart';
import 'package:pinsaderoma/screens/order_screen.dart';
import 'package:pinsaderoma/screens/products.dart';
import 'package:pinsaderoma/screens/singleProduct_screen.dart';
import 'screens/autentication/landing_screen.dart';
import 'screens/navigation_screens/contact_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: LandingPage.id,
      routes: {
        LandingPage.id: (context) => LandingPage(),

        AboutScreen.id: (context) => AboutScreen(),
        ContactScreen.id: (context) => ContactScreen(),
        UserSettingsScreen.id : (context) => UserSettingsScreen(),

        CatagoreScreen.id: (context) => CatagoreScreen(),
        ProductsScreen.id: (context) => ProductsScreen(),
        SingleProductScreen.id: (context) => SingleProductScreen(),

        BagScreen.id: (context) => BagScreen(),
        OrderScreen.id: (context) => OrderScreen(),




      },
    );
  }
}


