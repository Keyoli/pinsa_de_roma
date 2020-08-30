import 'package:flutter/material.dart';
import 'package:pinsaderoma/Catagore.dart';

class ButtonRedMain extends StatelessWidget {

  final String text;
  final double width;

  const ButtonRedMain({
    Key key, this.text, this.width,
  }) : super(key: key);

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
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => CatagoreMain()));
          },
          color: Colors.redAccent,
          child: Text(text, style: TextStyle( color: Colors.white, fontSize: 20.0, fontFamily: 'Calibri',)),
          splashColor: Theme.of(context).accentColor,
          focusColor: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}