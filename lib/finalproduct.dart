import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/articlesection.dart';
import 'Theme/navigatorredbox.dart';
import 'Theme/navigatorsection.dart';
import 'components/addBasketButton.dart';
import 'components/backgroundAdjustment.dart';


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

List<double> _productPriceList = [
  9900,
  12000,
  36000,
  9900,
  99999,
];

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class FinalProductMain extends StatefulWidget {
  @override
  _FinalProductMainState createState() => _FinalProductMainState();
}

class _FinalProductMainState extends State<FinalProductMain> {

  String _productSize = 'Small';
  var _height = 100.0;
  var _width = 100.0;
  var _color = Colors.white;
  var _backgroundColor1 = Color.fromRGBO(24, 51, 98, 100);
  var _backgroundColor2 = Color.fromRGBO(24, 51, 98, 100);
  var _backgroundColor3 = Color.fromRGBO(24, 51, 98, 100);

  void animatedContainer() {
    _backgroundColor1 = _backgroundColor1 == Color.fromRGBO(24, 51, 98, 100) ? Colors.redAccent : Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor2 = Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor3 = Color.fromRGBO(24, 51, 98, 100);
    _productSize = 'Small';
    print(_productSize);
  }

  void animatedCountainer2(){
    _backgroundColor1 = Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor3 = Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor2 = _backgroundColor2 == Color.fromRGBO(24, 51, 98, 100) ? Colors.redAccent : Color.fromRGBO(24, 51, 98, 100);
    _productSize = 'Medium';
    print(_productSize);
  }

  void animatedCountainer3(){
    _backgroundColor1 = Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor2 = Color.fromRGBO(24, 51, 98, 100);
    _backgroundColor3 = _backgroundColor3 == Color.fromRGBO(24, 51, 98, 100) ? Colors.redAccent : Color.fromRGBO(24, 51, 98, 100);
    _productSize = 'Large';
    print(_productSize);
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 51, 98, 100),
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  NavigationSection(),
                  Stack(
                    children: <Widget>[
                      BackgroundAdjustment(height: 310.0),
                      Container(
                        height: size.height*7.6/16,
                        width: size.width,
                        child: Image.asset(_productImage[0], fit: BoxFit.cover),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width*14/16, top: 5.0, bottom: 5.0, right: 5.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, size: 35.0,),
                          backgroundColor: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  RatingInfoSection(),
                  Container(
                    margin: EdgeInsets.only(right: size.width*7/16, bottom: 5.0),
                    child: Text(_productName[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.0,
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold
                        )),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 35,
                    endIndent: 185,
                    color: Theme.of(context).primaryColor,
                  ),
                  ArticleArea(articleabout: productDetail),
                  Center(
                    child: Text('Add more', style: TextStyle(color: Colors.grey[600], fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: size.width*2/16, right: size.width*2/16, bottom: size.width*2/16),
                      child: NumberOfProductButton(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:size.width*0.05, right: size.width*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Ingredient', style: Theme.of(context).textTheme.headline5),
                        IconButton(
                          onPressed: (){
                            print('Detail');
                          },
                            icon: Icon(Icons.add, color: Colors.white, size: 30.0)
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.6,
                    height: 15.0,
                    indent: 20,
                    endIndent: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        height: _height,
                        width: _width,
                        decoration: BoxDecoration(
                          color: _backgroundColor1,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: _color, width: 4.0, style: BorderStyle.solid),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              animatedContainer();
                            });
                          },
                          child: Text('S', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        height: _height,
                        width: _width,
                        decoration: BoxDecoration(
                          color: _backgroundColor2,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: _color, width: 4.0, style: BorderStyle.solid),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              animatedCountainer2();
                            });
                          },
                          child: Text('M', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        height: _height,
                        width: _width,
                        decoration: BoxDecoration(
                          color: _backgroundColor3,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: _color, width: 4.0, style: BorderStyle.solid),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              animatedCountainer3();
                            });
                          },
                          child: Text('L', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 110.0, left: 95.0),
                      child: ProductAddToBasketButton(price: _productPriceList[3], icon: Icons.store, size: 35.0, fontSize: 28.0,)),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  CalculateNavigator(productPrice: _productPriceList[1], icon: Icons.store_mall_directory),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RatingInfoSection extends StatelessWidget {
  const RatingInfoSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Product Rate', style: TextStyle
            (
            fontFamily: 'Calibri',
            fontSize: 23.0,
            color: Color.fromRGBO(255, 183, 36, 1),
          )),
          Row(
            children: <Widget>[
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberOfProductButton extends StatefulWidget {
  const NumberOfProductButton({
    Key key,
  }) : super(key: key);

  @override
  _NumberOfProductButtonState createState() => _NumberOfProductButtonState();
}
class _NumberOfProductButtonState extends State<NumberOfProductButton> {

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        OutlineButton(
      borderSide: BorderSide(
          width: 3.0,
          color: Theme.of(context).accentColor,
      ),
        child: Icon(Icons.exposure_neg_1, color: Colors.white, size: 45.0),
        onPressed: (){
        setState(() {
          if(_count == 10){
            _count = _count - 1;
            print(_count);
          }
          else if(_count == 1){
            _count = 1;
          print(_count);}
          else{
            _count --;
          }
        });
        print('Decrease product number');
        },
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
        ),
        Text('$_count', style: TextStyle(
          fontFamily: 'Calibri',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 38.0,
        )),
        OutlineButton(
          borderSide: BorderSide(
            width: 3.0,
            color: Theme.of(context).accentColor,
          ),
          child: Icon(Icons.plus_one, color: Colors.white, size: 45.0),
          onPressed: (){
            setState(() {
              if(_count != 10){
                _count = _count + 1;
                print(_count);
              }
              else{
                _count = 10;
              print(_count);}
            });
            print('Increase product number');
            },
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
      ],
    );
  }
}




