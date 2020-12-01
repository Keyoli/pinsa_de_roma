import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/slideupwidget.dart';
import 'package:pinsaderoma/Theme/SlideUpSignUpWidget.dart';

// *TODO: API gargah, frontEnd token hadgaldag bolgoh
class LandingPage extends StatelessWidget {
  static const String id = '/';


  showBottomSheetSignIn(context){
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true ,
        builder: (BuildContext context)
        {

      return SlideUpWidget();
        });
  }

  showBottomSheetSignUp(context){
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true ,
        builder: (BuildContext context)
        {
          return SlideUpSignUp();
        });
  }

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.fill),
            ),
            width: screenWidth,
            height: screenHeight,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 100).withOpacity(0.7),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: screenHeight*3/16,
                ),
                Image.asset('images/logo.png', width: 320, height: 120),
                SizedBox(
                  height: screenWidth*0.9/20,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome!', style: Theme.of(context).textTheme.headline3),
                      Text('to pinsa the Roma in Mongolia', style: Theme.of(context).textTheme.headline2),
                      Text('Geniune Italian taste serve your dish', style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenWidth*0.1/0.7,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  onPressed: (){
                    showBottomSheetSignIn(context);
                  },
                  color: Theme.of(context).accentColor,
                  splashColor: Colors.white,
                  hoverColor: Theme.of(context).accentColor,
                  child: Text('Sign in', style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'Segoe',
                  )),
                ),
                SizedBox(
                  height: screenWidth*0.09/1.6,
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  onPressed: (){
                    showBottomSheetSignUp(context);
                  },
                  color: Colors.white,
                  splashColor: Theme.of(context).accentColor,
                  hoverColor: Theme.of(context).accentColor,
                  child: Text('Sign up', style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 35.0,
                    fontFamily: 'Segoe',
                  )),
                ),
                SizedBox(
                  height: screenWidth*0.09,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

