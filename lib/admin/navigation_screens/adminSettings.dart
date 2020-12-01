import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinsaderoma/Theme/footersection.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';
import 'package:pinsaderoma/components/userRedButton.dart';


class AdminSettingsScreen extends StatelessWidget {
  static const String id = '/admSettings_screen';
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel, color: Colors.black87, size: 42.0,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 55.0),
                        child: Text('Admin Profile',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 56.0,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 15.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Color.fromRGBO(63, 203, 246, 30),
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 50.0, bottom: 10.0, right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Admin Info', style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 34.0,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textFieldTitle('Admin name'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(color: Colors.grey[300], child: TextFieldArea(prokey: false, hintText: 'MosQuzz',)),
                      ),
                      textFieldTitle('Email'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(color: Colors.grey[300], child: TextFieldArea(prokey: false, hintText: 'mosquzz@gmail.com',)),
                      ),
                      textFieldTitle('Phone number'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(color: Colors.grey[300], child: TextFieldArea(prokey: false, hintText: '+976 00 00 00',)),
                      ),
                      textFieldTitle('Password '),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(color: Colors.grey[300], child: TextFieldArea(prokey: true)),
                      ),
                      textFieldTitle('Password again'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(color: Colors.grey[300], child: TextFieldArea(prokey: true,)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.9/35,
                  ),
                  UserRedButton(text: 'Save account', width: size.width*7/16),
                  SizedBox(
                    height: size.height*0.2/10,
                  ),
                  FooterArea(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

