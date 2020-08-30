import 'package:flutter/material.dart';

var socialMediaImages = [
  'images/SocialMedia/facebook.png',
  'images/SocialMedia/instagram.png',
  'images/SocialMedia/gmail.png',
];

class ContactArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Container(
                      color: Colors.white,
                      child: Image.asset(socialMediaImages[0], height: 50.0, width: 50.0,)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 8.0, 20.0,  8.0, 12.0),
                child: Column(
                  children: <Widget>[
                    Text('pinsaderoma', style: Theme.of(context).textTheme.headline6,),
                    Text('Official', style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 120, child: VerticalDivider(thickness: 2, color: Colors.grey[600])),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  child: Container(
                      color: Colors.white,
                      child: Image.asset(socialMediaImages[1], height: 50.0, width: 50.0,)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 8.0, 20.0,  8.0, 12.0),
                child: Column(
                  children: <Widget>[
                    Text('pinsaderoma', style: Theme.of(context).textTheme.headline6,),
                    Text('Mongolia', style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
              ),
            ],
          ),
          Container(height: 120, child: VerticalDivider(thickness: 1.5, color: Colors.grey[600])),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: Image.asset(socialMediaImages[2], height: 50.0, width: 50.0,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB( 8.0, 20.0,  8.0, 12.0),
                child: Column(
                  children: <Widget>[
                    Text('pinsaderoma', style: Theme.of(context).textTheme.headline6,),
                    Text('@gmail.com', style: Theme.of(context).textTheme.headline6,),
                  ],
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}