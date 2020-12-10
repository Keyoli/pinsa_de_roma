import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';
import 'package:pinsaderoma/components/userRedButton.dart';
import 'package:pinsaderoma/components/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pinsaderoma/screens/catagore_screen.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  String expectation;

  Future<void> alertSignInMethodFailed(String expectation) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ALERT'),
            content: Text(expectation),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(24, 51, 98, 1),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
      ),
      height: 500.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('Нэвтрэх булан',
              style: kAutenticationHeaderTextStyle
          ),
          Container(
            width: 200.0,
            child: Divider(
              thickness: 2.0,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(height: 40.0),

          TextFieldArea(
              onChange: (value) {
                setState(() {
                email = value;
                });
             },
              hintText: 'Хэрэглэгчийн хаяг',
              icon: Icons.person,
          ),
          TextFieldArea(
            onChange: (value) {
              setState(() {
                password = value;
              });
            },
            hintText: 'Хэрэглэгчийн нууц үг',
            obscureText: true,
            icon: Icons.lock,
          ),

          UserRedButton(
            text: 'Нэвтрэх',
            width: 100.0,
            onPress: () async {
              try {
                final user = await _auth.signInWithEmailAndPassword(
                    email: email, password: password);
                if (user != null) {
                  print('currentUserIs: $user');
                  Navigator.pushNamed(context, CatagoreScreen.id);
                } else {
                  print('Error Thrown by $user');
                }
              } catch (e) {
                setState(() {});
                alertSignInMethodFailed(e.toString());
              }
            },
          ),
        ],
      ),
    );
  }
}
