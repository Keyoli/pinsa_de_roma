import 'package:flutter/material.dart';

var bannerItem = [ 'Pinsa' , 'Salad' , 'Chicken' , 'Drink' ];
var productDetail = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus esse nobis rem sequi tempore.';

class NavigationSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(50, 88, 155, 100),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1.0),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.only(left: 8.0, right: 16.0, top: 0.0, bottom: 5.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 12.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(bannerItem[0] , style: Theme.of(context).textTheme.headline2),
                    Text(bannerItem[1] , style: Theme.of(context).textTheme.headline2),
                    Text(bannerItem[2] , style: Theme.of(context).textTheme.headline2),
                    Text(bannerItem[3] , style: Theme.of(context).textTheme.headline2),
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }
}