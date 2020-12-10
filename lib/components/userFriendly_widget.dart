import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/constant.dart';
import 'package:pinsaderoma/screens/navigation_screens/settings_screen.dart';

class UserFriendly extends StatelessWidget {
  const UserFriendly({
    this.word,
    this.user,
    this.sizeLeft = 100.0,
    this.sizeTop = 0.0,
    this.sizeBottom = 25.0,
  });

  final String word;
  final String user;
  final double sizeLeft;
  final double sizeTop;
  final double sizeBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: sizeLeft, top: sizeTop, bottom: sizeBottom),
      child: Column(
        children: <Widget>[
          Text(word,
              style: userFriendlyExpressionTextStyle
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, UserSettingsScreen.id);
            },
            child: Text(' $user',
                style: userFriendlyUserTextStyle
            ),
          ),
        ],
      ),
    );
  }
}