import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/buttonRed.dart';
import 'package:pinsaderoma/components/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SlideUpWidget extends StatefulWidget {
  @override
  _SlideUpWidgetState createState() => _SlideUpWidgetState();
}

class _SlideUpWidgetState extends State<SlideUpWidget> {

  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  String expectation;


  Future<void> alertSignInMethodFailed(String expectation){
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ALERT'),
            content: Text(expectation),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        color: Color.fromRGBO(24, 51, 98, 1),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0)
        ),
      ),
        height: 500.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('User Login',
              style: kAutenticationHeaderTextStyle
          ),
          Container(
            width: 150.0,
            child:Divider(
              thickness: 2.0,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(height: 40.0),

          Container(
            padding: EdgeInsets.all(35.0),
            child: TextField(
              onChanged: (value){
                setState(() {
                  email = value;
                });
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Username',
                prefixIcon: Icon(
                  Icons.person,
                  size: 25.0,
              )),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 30.0),
            child: TextField(
              onChanged: (value){
                setState(() {
                  password = value;
                });
              },
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 25.0,
                  )),
            ),
          ),
          ButtonRedMain(
              text: 'Sign In',
              width: 100.0,
              onPress: (){
                try{
                  final user = _auth.signInWithEmailAndPassword(
                      email: email,
                      password: password
                  );

                  if(user != null){
                    //Navigator.pushNamed(context, ChatScreen.id);
                    print('currentUserIs: $user');
                  }
                  else {
                    print('Error Thrown by $user');
                  }
                } catch(e) {
                  setState(() {});
                  expectation = e;
                  alertSignInMethodFailed(expectation);
                }
              },
          ),
        ],
      ),
    );
  }
}


