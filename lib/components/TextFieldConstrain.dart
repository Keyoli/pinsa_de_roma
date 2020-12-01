import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldConstrain extends StatelessWidget {

  const TextFieldConstrain({
    Key key,
    this.child, this.color = Colors.white,
  }) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*11/16,
      height: size.height*2/42,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: child,
    );
  }
}

class TextFieldBioConstrain extends StatelessWidget {

  const TextFieldBioConstrain({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*11/16,
      height: size.height*2/8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: child,
    );
  }
}


class TextFieldArea extends StatelessWidget {

  final String hintText;
  final bool prokey;

  const TextFieldArea({
    Key key, this.prokey, this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 1.8),
      child: TextField(
        onChanged: (value){
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
        obscureText: prokey,
        cursorColor: Colors.white,
      ),
    );
  }
}



Widget textFieldTitle(String title){
  return Text(title,
      style: TextStyle(
        fontFamily: 'Calibri',
        color: Colors.grey[500],
        fontSize: 22.0,
      ));
}
