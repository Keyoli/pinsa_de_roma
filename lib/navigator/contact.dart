import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/articlesection.dart';
import 'package:pinsaderoma/Theme/footersection.dart';
import 'package:pinsaderoma/Theme/contactsection.dart';

var socialMediaImages = [
  'images/SocialMedia/facebook.png',
  'images/SocialMedia/instagram.png',
  'images/SocialMedia/gmail.png',
];

String _contactdetail = 'Lorem Ipsum Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumyaliquyam erat sed diam voluptua. At vero eos etaccusam et justo duo dolores et ea rebum. Stetclita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ';

class NavigateContact extends StatelessWidget {
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
                        Text('Contact',
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
                  SizedBox(height: size.height*0.03),
                  const Divider(
                    height: 15.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Color.fromRGBO(63, 203, 246, 30),
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 50.0, bottom: 30.0, right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Contact Us', style:Theme.of(context).textTheme.headline4),
                      ],
                    ),
                  ),
                  ArticleArea(articleabout: _contactdetail),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 10.0, 0.0, 0.0),
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.white, size: 38.0,),
                      title: Text('+123 456 7890', style: Theme.of(context).textTheme.headline5,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 10.0),
                    padding: EdgeInsets.only(bottom: 20.0,),
                    child: ListTile(
                      leading: Icon(Icons.mail_outline, color: Colors.white, size: 38.0,),
                      title: Text('pinsaderoma@gmail.com', style: Theme.of(context).textTheme.headline5,),
                    ),
                  ),
                  ContactArea(),
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



