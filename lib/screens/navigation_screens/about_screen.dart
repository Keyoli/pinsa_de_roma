import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/contactsection.dart';
import 'package:pinsaderoma/Theme/footersection.dart';
import 'package:pinsaderoma/Theme/articlesection.dart';


String _aboutdetail = 'Lorem Ipsum Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumyaliquyam erat sed diam voluptua. At vero eos etaccusam et justo duo dolores et ea rebum. Stetclita kasd gubergren no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ';

class AboutScreen extends StatelessWidget {

  static const id = '/about_screen';

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
                          Text('About',
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
                          Text('About Us', style:Theme.of(context).textTheme.headline4),
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(20.0), right: Radius.circular(20.0)),
                      child: Image.asset('images/navgation/about-1.jpg', width: size.width, height: size.height*6/16, fit: BoxFit.cover),
                    ),
                    SizedBox(height: size.height*0.03),
                    ArticleArea(articleabout: _aboutdetail),
                    SizedBox(height: size.height*0.01/10),
                    ArticleArea(articleabout: _aboutdetail),
                    SizedBox(height: size.height*0.03),
                    ContactArea(),
                    SizedBox(height: size.height*0.03),
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


