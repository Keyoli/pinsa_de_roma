import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/constant.dart';

class UserRedButton extends StatelessWidget {
  final bool isAdmin;
  final String text;
  final double width;
  final Function onPress;

  UserRedButton({
    this.isAdmin = false,
    @required this.onPress,
    @required this.text,
    @required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(28.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0.0, 2.0),
              blurRadius: 1.0,
              spreadRadius: 2.0,
            )
          ]
      ),
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.0),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
          onPressed: onPress,
          color: Colors.redAccent,
          child: Text(text,  style: kUserRedButtonTextStyle),
          splashColor: Theme.of(context).accentColor,
          focusColor: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}