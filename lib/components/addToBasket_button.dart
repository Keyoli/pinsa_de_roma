import 'package:flutter/material.dart';
import 'constant.dart';

class AddToBasketButton extends StatelessWidget {

  final int price;
  final Function onPress;

  AddToBasketButton({
    @required
    this.price,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 2.0, right: 10.0,),
      child: Center(
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: onPress,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.shopping_cart,
                color: Colors.white,
                size: 25.0,
              ),
              Text('$price₮',
                  style:  kAddToBasketButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
