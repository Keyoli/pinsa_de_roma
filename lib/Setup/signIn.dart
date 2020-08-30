import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

  String _email, _password ;
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter your email';
            }
            return null;
          },
          onSaved: (value) {
            _email = value;
          },
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),
      );
  }

  void signIn(){
    final formState = _formKey.currentState;
    if(formState.validate()){
      //TODO firebase login method
    }else{}
  }

}