import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/constant.dart';


class TextFieldArea extends StatelessWidget {

  const TextFieldArea({
    @required this.onChange,
    @required this.hintText,
    this.icon,
    this.obscureText = false,
  });

  final Function onChange;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 30.0),
      child: TextField(
        onChanged: onChange,
        textAlign: TextAlign.center,
        obscureText: obscureText,
        decoration: kTextFieldDecoration.copyWith(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              size: 25.0,
            )),
      ),
    );
  }
}


Container TextFieldTitle(String title){
  return Container(
    margin: EdgeInsets.only(bottom: 5.0),
    child: Text(title,
        style: TextStyle(
          fontFamily: 'Arial',
          color: Colors.grey[500],
          fontSize: 20.0,
        ),
    ),
  );
}

class OptionalFieldArea extends StatelessWidget {

  OptionalFieldArea({
    @required this.onChange,
    this.focus,
  });

  final Function onChange;
  final bool focus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: 35.0, bottom: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blueAccent,
          width: 3.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      height: 160.0,
      width: MediaQuery.of(context).size.width - 50.0,
      child: TextField(
        autofocus: focus,
        decoration: kOptionalTextFieldDecoration,
        onChanged: onChange,
      ),
    );
  }
}

