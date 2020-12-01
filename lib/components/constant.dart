import 'package:flutter/material.dart';


const kActiveColour = Color(0xFFDD3737);
const kInactiveColour = Colors.transparent;


const kCatagoreHeadLineTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 21.0,
  fontWeight: FontWeight.w700,

);


const kProductSizeButtonTextStyle = TextStyle(
  fontSize: 24.0,
  color: Color(0xFFDD3737),
  fontWeight: FontWeight.w700,
);

const kProductSizeButtonActiveTextStyle = TextStyle(
  fontSize: 24.0,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

const kProductTitleTextStyle = TextStyle(
  fontFamily: 'Sans-serif',
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  color: Color.fromRGBO(255, 40, 40, 50),
  fontSize: 25.0,
);

const kProductDetailTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w300,
  color: Colors.black87,
);


const kAutenticationHeaderTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  fontWeight: FontWeight.w500,
);

const kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  hintText: 'Enter value',
  hintStyle: TextStyle(
    fontFamily: 'Segoe-Bold',
    fontWeight: FontWeight.w800,
    fontSize: 18.0,
    color: Colors.black26,
  ),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kUserRedButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontFamily: 'Calibri',
);