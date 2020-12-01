import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';
import 'package:pinsaderoma/components/buttonRed.dart';

class SlideUpSignUp extends StatefulWidget {
  @override
  _SlideUpSignUpState createState() => _SlideUpSignUpState();
}

class _SlideUpSignUpState extends State<SlideUpSignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(24, 51, 98, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
      ),
      height: size.height*15/16,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(

                  children: <Widget>[
                    Container(
                      height: 4,
                      width: 200.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        onPressed: (){},
                        color: Colors.grey[500],
                        splashColor: Colors.white,
                        hoverColor: Theme.of(context).accentColor,
                        child: Text(''),
                      ),
                    ),
                    Container(
                      height: 4,
                      width: 100.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        onPressed: (){},
                        color: Theme.of(context).accentColor,
                        splashColor: Theme.of(context).accentColor,
                        hoverColor: Theme.of(context).accentColor,
                        child: Text(''),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: size.height*0.09/3),
          Text('User Registration', style: TextStyle(
            color: Colors.white,
            fontFamily: 'Segoe',
            fontSize: 28.0,
            fontStyle: FontStyle.normal,
          )),
          Divider(
            height: 20.0,
            thickness: 2.5,
            color: Theme.of(context).accentColor,
            endIndent: 110,
            indent: 110,
          ),
          SizedBox(height: size.height*0.09/4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textFieldTitle('User Name'),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFieldConstrain(child: TextFieldArea(prokey: false)),
              ),
              SizedBox(height: size.height*0.09/5),
              textFieldTitle('Email'),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFieldConstrain(child: TextFieldArea(prokey: false)),
              ),
              SizedBox(height: size.height*0.09/5),
              textFieldTitle('Password 1'),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFieldConstrain(child: TextFieldArea(prokey: true)),
              ),
              SizedBox(height: size.height*0.09/5),
              textFieldTitle('Password 2'),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFieldConstrain(child: TextFieldArea(prokey: true)),
              ),
              SizedBox(height: size.height*0.09/5),
              textFieldTitle('Phone Number'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: TextFieldConstrain(child: TextFieldArea(prokey: false)),
              ),
            ],
          ),
          //SizedBox(height: size.height*0.09/2),
          SizedBox(height: size.height*0.09/2),
          ButtonRedMain(text: 'Sign up', width: size.width*5/16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: FlatButton(
              onPressed: (){
                print("TODO navigator go back");
              },
              child: Text('Already have Account?', style: TextStyle(
                fontFamily: 'Segoe',
                color: Colors.white,
                fontSize: 16.0,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
