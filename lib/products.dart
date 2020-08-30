import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/navigatorredbox.dart';
import 'package:pinsaderoma/Theme/navigatorsection.dart';
import 'package:pinsaderoma/finalproduct.dart';
import 'package:pinsaderoma/mybag.dart';
import 'package:pinsaderoma/navigator/about.dart';
import 'package:pinsaderoma/navigator/contact.dart';
import 'package:pinsaderoma/navigator/settings.dart';

import 'Catagore.dart';
import 'autentication/landingscreen.dart';
import 'components/addBasketButton.dart';

String _user = 'MosQuzz';


var _bannerItem = [ 'Pinsa' , 'Salad' , 'Chicken' , 'Drink' ];

List<String> _productImage = [
  'images/product/salad/product1.jpg',
  'images/product/salad/product2.jpg',
  'images/product/salad/product3.jpg',
  'images/product/salad/product4.jpg',
];

List<String> _productName = [
  'Sizier salad',
  'Cheese salad',
  'German salad',
  'Chicken salad',
];
//:TODO 1. Slider nemeh

ListTile _textStyling(String text){
  return ListTile(
    title: Text(text,
      style: TextStyle(
      color: Colors.white,
      fontSize: 28.0,
      fontFamily: 'Calibri'
      ),
    ),
  );
}

Container productBackground(double height) {
  return Container(
    margin: EdgeInsets.all(10.0),
    height: height,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(4.0, 5.0),
          blurRadius: 5.0,
          spreadRadius: 3.0,
        ),
      ],
    ),
  );
}


class ProductMain extends StatefulWidget {
  @override
  _ProductMainState createState() => _ProductMainState();

}

class _ProductMainState extends State<ProductMain> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.only(bottom: 20.0, top: 5.0, right: 10.0),
            child: IconButton(
                icon: Icon(Icons.menu, size: 40.0, color: Colors.white),
                onPressed: () {
                _scaffoldKey.currentState.openDrawer();
                },
            ),
          ),
          elevation: 12.0,
          bottom: PreferredSize(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 16.0, top: 0.0, bottom: 5.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 12.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Text(_bannerItem[0] , style: Theme.of(context).textTheme.headline2)
                      ),
                      Text(_bannerItem[1] , style: Theme.of(context).textTheme.headline2),
                      Text(_bannerItem[2] , style: Theme.of(context).textTheme.headline2),
                      Text(_bannerItem[3] , style: Theme.of(context).textTheme.headline2),
                    ],
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(65.0)),
          backgroundColor: Color.fromRGBO(24, 51, 98, 1),
          title: Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: FlatButton(
                  onPressed:(){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => CatagoreMain()));
                  },
                  child: Image.asset('images/logo.png', height: 60, width: 120,))
          ),
          centerTitle: true,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15.0, top: 5.0),
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => MyBagMain()));
                },
                icon: Icon(Icons.shopping_basket, size: 40, color: Colors.white),
              ),
            ),
          ],
        ),

        drawer: Drawer(
          child: Container(
            color: Colors.redAccent,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 230.0, top: 15.0),
                      width: 60.0,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.cancel, color: Colors.white, size: 45.0,),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => CatagoreMain(),
                        ));
                      },
                      child: _textStyling('Home'),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => NavigateAbout(),
                        ));
                      },
                      child: _textStyling('About'),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => NavigateContact(),
                        ));
                      },
                      child: _textStyling('Contact'),
                    ),
                    FlatButton(
                      onPressed: (){
                        print('Gesture detecter');
                      },
                      child: _textStyling('Service'),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => ProfileSettings(),
                        ));
                      },
                      child: _textStyling('Settings'),
                    ),
                    FlatButton(
                      onPressed: (){
                        autenticationStatus();
                      },
                      child: _textStyling(status),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: Color.fromRGBO(24, 51, 98, 1),
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    //NavigationSection(),
                    Container(
                        child: UserFriendly(user: _user, word: 'Hello ')
                    ),
                    ProductArea(),
                    CalculateNavigator(productPrice: 12000, icon: Icons.store_mall_directory),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void autenticationStatus(){
    if(status == 'Log in'){
      Navigator.push(context, new MaterialPageRoute(builder: (context) => LandingPage()));
      status = 'Log out';
    }
    else{
      _showMyDialog();
      setState(() {
        status = 'Log in';
      });
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.redAccent,
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You have logged out'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Okey'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class ProductArea extends StatefulWidget {
  @override
  _ProductAreaState createState() => _ProductAreaState();
}

class _ProductAreaState extends State<ProductArea> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(height: size.height*0.05),
        Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  productBackground(size.height*0.6),
                  Container(
                    height: size.height*0.6,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => FinalProductMain()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                            child: Image.asset(_productImage[0]),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                            child: Text(_productName[0], style: Theme.of(context).textTheme.headline1,)
                        ),
                        Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1.5,
                          endIndent: 40,
                          indent: 12,
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                          child: Text(productDetail),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ProductSizeButton(text: 'S'),
                            ProductSizeButton(text: 'N'),
                            ProductSizeButton(text: 'L'),
                          ],
                        ),
                        ProductAddToBasketButton(price: 19000),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  productBackground(size.height*0.6),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                          child: Image.asset(_productImage[1]),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                            child: Text(_productName[1], style: Theme.of(context).textTheme.headline1,)
                        ),
                        Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1.5,
                          endIndent: 40,
                          indent: 12,
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                          child: Text(productDetail),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ProductSizeButton(text: 'S'),
                            ProductSizeButton(text: 'N'),
                            ProductSizeButton(text: 'L'),
                          ],
                        ),
                        ProductAddToBasketButton(price: 19000),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height*0.05),
        Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  productBackground(size.height*0.6),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                          child: Image.asset(_productImage[2]),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                            child: Text(_productName[2], style: Theme.of(context).textTheme.headline1,)
                        ),
                        Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1.5,
                          endIndent: 40,
                          indent: 12,
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                          child: Text(productDetail),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ProductSizeButton(text: 'S'),
                            ProductSizeButton(text: 'N'),
                            ProductSizeButton(text: 'L'),
                          ],
                        ),
                        ProductAddToBasketButton(price: 21000),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  productBackground(size.height*0.6),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
                          child: Image.asset(_productImage[3]),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                            child: Text(_productName[3], style: Theme.of(context).textTheme.headline1,)
                        ),
                        Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1.5,
                          endIndent: 40,
                          indent: 12,
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
                          child: Text(productDetail),
                        ),
                        SizedBox(
                          height: size.height*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            ProductSizeButton(text: 'S'),
                            ProductSizeButton(text: 'N'),
                            ProductSizeButton(text: 'L'),
                          ],
                        ),
                        ProductAddToBasketButton(price: 9900),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height*0.05),
        FlatButton(
          onPressed: (){},
          child: Text('Load more', style: Theme.of(context).textTheme.headline5),
        ),
      ],
    );
  }
}


class ProductSizeButton extends StatelessWidget {
  final String text;

  const ProductSizeButton({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 40.0,
      child: OutlineButton(
        borderSide: BorderSide(
          width: 2,
          color: Colors.redAccent,
        ),
        textColor: Colors.redAccent,
        highlightedBorderColor: Colors.redAccent,
        child: Text(text, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold )),
        onPressed: (){
          print('pressed!');
          },
        highlightColor: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        splashColor: Theme.of(context).accentColor,
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
      margin: EdgeInsets.only(left: 200.0, top: 10.0, bottom: 5.0),
      child: Row(
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
