import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';
import 'package:pinsaderoma/components/userRedButton.dart';
import 'package:pinsaderoma/components/constant.dart';
import 'package:pinsaderoma/screens/catagore_screen.dart';

class RegistrationWidget extends StatefulWidget {
  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {

  String password;
  String passwordCheck;
  String pass;
  String email;
  String phoneNumber;
  final _auth = FirebaseAuth.instance;

  Future<void> alertSignUpMethodFailed(String expectation){
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
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(24, 51, 98, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
      ),
      height: size.height*15/16,
      child: Column(
        children: <Widget>[

          SizedBox(height: 20.0),
          Text('User Registration',
              style: kAutenticationHeaderTextStyle
          ),
          Container(
            width: 300.0,
            child:Divider(
              thickness: 2.0,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(height: 40.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: textFieldTitle('User Name'),
              ),
              Container(
                padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 30.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      email = value;
                    });
                  },
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.person,
                        size: 25.0,
                      )),
                ),
              ),

              Center(
                child: textFieldTitle('Password'),
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

              Center(
                child: textFieldTitle('Password again'),
              ),
              Container(
                padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 30.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      passwordCheck = value;
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

              Center(
                  child: textFieldTitle('Phone number')
              ),
              Container(
                padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 30.0),
                child: TextField(
                  onChanged: (value){
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                  textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Phone',
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 25.0,
                      )),
                ),
              ),


            ],
          ),
          SizedBox(height: size.height*0.09/2),

          UserRedButton(
              text: 'Sign up',
              width: 150.0,
              onPress: () async {
                if(password == passwordCheck){
                  pass = password;
                }
                try{
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: pass);
                    if (newUser != null){
                      Navigator.pushNamed(context, CatagoreScreen.id);
                    }
                  else {
                    setState(() {});
                    alertSignUpMethodFailed('Passwords are not fiting..');
                  }
                }
                catch(e) {
                  setState(() {});
                  alertSignUpMethodFailed(e.toString());
                }
              },
          ),
        ],
      ),
    );
  }
}
