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
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0)
        ),
      ),
      height: size.height - 50,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('Бүртгэлийн булан',
              style: kAutenticationHeaderTextStyle
          ),
          Container(
            width: 250.0,
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
                  child: TextFieldTitle('Хэрэглэгчийн хаяг'),
              ),
              TextFieldArea(
                hintText: 'User name',
                onChange: (value){
                  setState(() {
                    email = value;
                  });
                },
              ),

              Center(
                child: TextFieldTitle('Нууц үг'),
              ),
              TextFieldArea(
                hintText: 'Password',
                obscureText: true,
                onChange: (value){
                  setState(() {
                    password = value;
                  });
                },
              ),
              Center(
                child: TextFieldTitle('Нууц үг дахин'),
              ),
              TextFieldArea(
                hintText: 'Password',
                obscureText: true,
                  onChange: (value){
                    setState(() {
                      passwordCheck = value;
                    });
               },
              ),

              Center(
                  child: TextFieldTitle('Утасны дугаар')
              ),
              TextFieldArea(
                hintText: 'Phone number',
                onChange: (value){
                  setState(() {
                    phoneNumber = value;
                  });
                },
              ),

            ],
          ),
          SizedBox(height: 20.0),
          UserRedButton(
              text: 'Бүртгүүлэх',
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
