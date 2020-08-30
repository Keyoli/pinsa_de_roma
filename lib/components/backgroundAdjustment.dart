import 'package:flutter/material.dart';

class BackgroundAdjustment extends StatelessWidget {

  final double height;

  const BackgroundAdjustment({
    Key key, this.height,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10.0),
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(5.0, 6.0),
            blurRadius: 5.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
    );
  }
}
