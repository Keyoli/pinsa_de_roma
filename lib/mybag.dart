import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pinsaderoma/Theme/navigatorredbox.dart';


String _user = 'MosQuzz';

List<double> _productPriceList = [
  9900,
  12000,
  36000,
  9900,
  99999,
];

String _productSize = 'Small';

var _productDetail = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus esse nobis rem sequi tempore.';
var _total = 1;

List<String> _productType = [
  'Pinsa',
  'Salad',
  'Chicken',
  'Drink',
];

List<String> _productName = [
  'Sizier salad',
  'Cheese salad',
  'German salad',
  'Chicken salad',
];


List<String> _productImage = [
  'images/product/salad/product1.jpg',
  'images/product/salad/product2.jpg',
  'images/product/salad/product3.jpg',
  'images/product/salad/product4.jpg',
];

class MyBagMain extends StatefulWidget {
  @override
  _MyBagMainState createState() => _MyBagMainState();
}

class _MyBagMainState extends State<MyBagMain> {

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
                    padding: EdgeInsets.all(26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('My Bag',
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

                  Container(
                    margin: EdgeInsets.only(left: size.width*14/16, top: 5.0, bottom: 2.0, right: 5.0),
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        print('Gesture Detecter go back');
                      },
                      child: Icon(Icons.cancel, size: 45.0, color: Theme.of(context).accentColor),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.0, bottom: 5.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BannerImageContainer(size: size),
                        BannerProductDetail(productPrice: _productPriceList[0], productSize: _productSize, total: _total, productType: _productType[1]),
                      ],
                    ),
                  ),

                  SizedBox(height: size.height*0.03),
                  const Divider(
                    height: 2.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Colors.black26,
                    thickness: 2.8,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: size.width*14/16, top: 5.0, bottom: 2.0, right: 5.0),
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        print('Gesture Detecter go back');
                      },
                      child: Icon(Icons.cancel, size: 45.0, color: Theme.of(context).accentColor),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.0, bottom: 5.0, right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BannerImageContainer(size: size),
                        BannerProductDetail(productPrice: _productPriceList[0], productSize: _productSize, total: _total, productType: _productType[1]),
                      ],
                    ),
                  ),

                  SizedBox(height: size.height*0.03),
                  const Divider(
                    height: 2.0,
                    endIndent: 40,
                    indent: 30.0,
                    color: Colors.black26,
                    thickness: 2.8,
                  ),
                  SizedBox(height: size.height*0.03),

                  Container(
                    margin: EdgeInsets.only(left: 15.0, bottom: 25.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Rate of ',
                                style: TextStyle(
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0,
                                  color: Colors.white,
                                )),
                            Text(_productType[1],
                                style: TextStyle(
                                  fontFamily: 'Segoe',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32.0,
                                  color: Theme.of(context).primaryColor,
                                )),
                            UserFriendly(user: _user, word: 'Thank you'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
                              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
                              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
                              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
                              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                      color: Colors.transparent,
                      onPressed: (){
                        print('proceed to next praise');
                      },
                      child: ProceedButtonRed(icon: Icons.shopping_cart, title: 'Proceed', productPrice: _productPriceList[0] + _productPriceList[1],),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProceedButtonRed extends StatelessWidget {
  @override

  const ProceedButtonRed({
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
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
              child: Icon(icon, color: Colors.white, size: 50.0,),
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


class UserFriendly extends StatelessWidget {
  const UserFriendly({
    Key key, this.word, this.user,
  }) : super(key: key);

  final String word;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 100.0, top: 0.0, bottom: 25.0),
      child: Column(
        children: <Widget>[
          Text(word,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 5.0,
          ),
          Text(' $user!',
              style: TextStyle(
                fontSize: 18.0,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

class BannerProductDetail extends StatelessWidget {
  const BannerProductDetail({
    Key key,
    this.productPrice, this.total, this.productSize, this.productType,
  }) : super(key: key);

  final double productPrice;
  final int total;
  final String productSize;
  final String productType;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 30.0),
          child: Text(_productName[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: 'Segoe',
                fontWeight: FontWeight.bold,
              )),
        ),
        Text('$productType pinsa de Roma',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 12.0,
              fontFamily: 'Calibri',
            )),
        Container(
          margin: EdgeInsets.only(right: size.width*0.22),
          child: Text('Ingredient',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 22.0,
                color: Theme.of(context).accentColor,
              )),
        ),
        Container(
          width: size.width*0.45,
          child: Text(_productDetail,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Calibri'
              )),
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(productSize,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Calibri',
                      fontSize: 22.0,
                    )),
                Text('Product Size',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 11.0,
                    )),
              ],
            ),
            Container(height: 45, child: VerticalDivider(thickness: 1.2, color: Colors.grey[600])),
            Column(
              children: <Widget>[
                Text('$productPrice₮',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Calibri',
                      fontSize: 22.0,
                    )),
                Text('Product Price',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 11.0,
                    )),
              ],
            ),
            Container(height: 45, child: VerticalDivider(thickness: 1.2, color: Colors.grey[600])),
            Column(
              children: <Widget>[
                Text('$total/x',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Calibri',
                      fontSize: 22.0,
                    )),
                Text('Total',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                      fontSize: 11.0,
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class BannerImageContainer extends StatelessWidget {
  const BannerImageContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.28,
      width: size.height*0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(3.0, 3.0),
            blurRadius: 3.0,
            spreadRadius: 3.0,
          ),
        ],
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(45.0),
          child: Image.asset(_productImage[0], fit: BoxFit.cover,)
      ),
    );
  }
}
