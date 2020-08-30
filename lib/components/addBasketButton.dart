import 'package:flutter/material.dart';
import 'package:pinsaderoma/mybag.dart';

class ProductAddToBasketButton extends StatelessWidget {

  final double price;
  final IconData icon;
  final double size;
  final double fontSize;

  const ProductAddToBasketButton({
    Key key, this.price, this.icon = Icons.shopping_cart, this.size = 30.0, this.fontSize = 22.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 2.0, right: 10.0,),
      child: Center(
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => MyBagMain()));
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Row(
            children: <Widget>[
              Icon(icon, color: Colors.white, size: size,),
              SizedBox(width: 10.0,),
              Text('$price₮',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  fontFamily: 'Calibri'
              )),
            ],
          ),
        ),
      ),
    );
  }
}
