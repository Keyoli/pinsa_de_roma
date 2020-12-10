import 'package:flutter/material.dart';


class CalculateNavigator extends StatelessWidget {
  @override

  const CalculateNavigator({
    Key key, this.productPrice = 9900,
    this.icon,
    this.title = 'Total',
  }) : super(key: key);

  final double productPrice;
  final IconData icon;
  final String title;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 70.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
              child: Icon(Icons.store_mall_directory, color: Colors.white, size: 50.0,),
            ),
            SizedBox(width: 10.0,),
            Text('$title $productPrice₮', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'Calibri'
            )),
          ],
        ),
      ),
    );
  }
}