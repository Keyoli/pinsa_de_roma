import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinsaderoma/Theme/footersection.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';
import 'package:pinsaderoma/components/buttonRed.dart';


class ProfileSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 51, 98, 100),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Profile',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white, size: 45.0,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.9/50,
                  ),
                  Center(
                    child: Container(
                      height: size.height*0.4,
                      width: size.height*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(150.0)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3.0, 2.0),
                            color: Colors.black54,
                            blurRadius: 2.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 5.0,
                        backgroundImage: AssetImage('images/background.jpg'),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.9/10,
                  ),
                  const Divider(
                    height: 15.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Color.fromRGBO(63, 203, 246, 30),
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 50.0, bottom: 30.0, right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('User Info', style: TextStyle(
                          color: Colors.white,
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
                      textFieldTitle('User name'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(child: TextFieldArea(prokey: false, hintText: 'MosQuzz',)),
                      ),
                      textFieldTitle('Email'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(child: TextFieldArea(prokey: false, hintText: 'mosquzz@gmail.com',)),
                      ),
                      textFieldTitle('Phone'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(child: TextFieldArea(prokey: false, hintText: '+976 00 00 00',)),
                      ),
                      textFieldTitle('Password 1'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(child: TextFieldArea(prokey: true)),
                      ),
                      textFieldTitle('Password 2'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldConstrain(child: TextFieldArea(prokey: true,)),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: size.height*0.9/45,
                  ),
                  const Divider(
                    height: 15.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Color.fromRGBO(63, 203, 246, 30),
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 50.0, bottom: 30.0, right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('User Bio', style: TextStyle(
                          color: Colors.white,
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
                      textFieldTitle('Bio Information'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                        child: TextFieldBioConstrain(child: TextFieldArea(prokey: false, hintText: 'Optional',)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.9/35,
                  ),
                  ButtonRedMain(text: 'Save account', width: size.width*7/16),
                  SizedBox(
                    height: size.height*0.8/10,
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
