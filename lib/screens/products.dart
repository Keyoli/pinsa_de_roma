import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/addBasketButton.dart';
import 'package:pinsaderoma/components/constant.dart';
import 'package:pinsaderoma/screens/singleProduct_screen.dart';

import 'bag_screen.dart';
import 'catagore_screen.dart';


GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final _firestore = FirebaseFirestore.instance;

enum Slider {
  salad,
  chicken,
  pinsa,
  drink,
}

class ProductsScreen extends StatefulWidget {
  static const String id = '/product_screen';
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  @override
  initState() {
    super.initState();
  }

  Slider selectedSlider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF102044),
        elevation: 10.0,
        leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState.openDrawer();
          },
          child: Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Icon(Icons.menu, size: 40.0, color: Colors.white)
          ),
        ),
        title: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CatagoreScreen.id);
            },
            child: Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Image.asset('images/logo.png', height: 50, width: 110,)
            )
        ),
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BagScreen.id);
              },
              child: Container(
                  margin: EdgeInsets.only(top: 10.0, right: 10.0),
                  child: Icon(Icons.shopping_bag_outlined, size: 40.0, color: Colors.white)
              )
          ),
        ],

        bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedSlider = Slider.pinsa;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300,),
                      height: 30.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: selectedSlider == Slider.pinsa
                            ? kActiveColour
                            : kInactiveColour,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                          child: Text('Pinsa' , style: kCatagoreHeadLineTextStyle)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedSlider = Slider.chicken;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300,),
                      height: 30.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: selectedSlider == Slider.chicken
                            ? kActiveColour
                            : kInactiveColour,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                          child: Text('Chicken' , style: kCatagoreHeadLineTextStyle)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedSlider = Slider.salad;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300,),
                      height: 30.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: selectedSlider == Slider.salad
                            ? kActiveColour
                            : kInactiveColour,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                          child: Text('Salad' , style: kCatagoreHeadLineTextStyle)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedSlider = Slider.drink;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300,),
                      height: 30.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: selectedSlider == Slider.drink
                            ? kActiveColour
                            : kInactiveColour,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Center(
                          child: Text('Drink' , style: kCatagoreHeadLineTextStyle)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(65.0)),
      ),
      drawer: Drawer(),

      body: SafeArea(
        child: PageView(
          children: [
            StreamBuilder(
              stream: _firestore.collection('pinsa').snapshots(),
              builder: (_, snapshot) {

                if(!snapshot.hasData){
                  return Center(
                    child: Text('Loading..',),
                  );
                }

                final products = snapshot.data.docs;
                List<ProductContainer> productContainers = [];
                List<Row> resultProduct = [];
                for(var product in products) {
                  final productName = product.data()['name'];
                  final productDetail = product.data()['detail'];
                  final productSmallPrice = product.data()['smallPrice'];
                  final productMediumPrice = product.data()['mediumPrice'];
                  final productLargePrice = product.data()['largePrice'];


                  print('is: ${product.documentID}');
                  //TODO:3 send documentID to productContainer

                  final productContainer = ProductContainer(
                      productName: productName.toString(),
                      productDetail: productDetail.toString(),
                      productPriceSmall: productSmallPrice,
                      productPriceMedium: productMediumPrice,
                      productPriceLarge: productLargePrice,
                  );

                  productContainers.add(productContainer);
                }
                for(var i = 0; i < productContainers.length; i+=2){
                  if(i+1 == productContainers.length){
                    resultProduct.add(
                        Row(children: [
                            productContainers[i],],
                        ));
                  } else {
                    resultProduct.add(
                        Row(children: [
                            productContainers[i],
                            productContainers[i+1],],
                        ));
                  }
                }
                return ListView(
                        children: resultProduct,
                 );
              },
            ),
          ],
        ),
      ),
    );
  }
}


enum Button {
  Small,
  Medium,
  Large,
}

List<String> productNames = [];

class ProductContainer extends StatefulWidget {

  ProductContainer({
    @required this.productName,
    @required this.productDetail,
    this.productPriceSmall,
    this.productPriceMedium,
    this.productPriceLarge
  });

  final String productName;
  final String productDetail;
  final int productPriceSmall;
  final int productPriceMedium;
  final int productPriceLarge;

  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {

  //TODO:5 if
  Button selectedButton;
  int _price = 10000;
  String _size = 'Small';

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  180.0,
      height:  450.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(4.0, 2.0),
            blurRadius: 4.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SingleProductScreen.id);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: Image.asset(
                  _productImage[1],
                  height: 180.0,
                  width: 180.0
              ),
            ),
          ),
          Container(
              width: 250.0,
              margin: EdgeInsets.only(left: 10.0, top: 3.0, bottom: 0.0),
              child: Text(widget.productName,
                  textAlign: TextAlign.center,
                  style: kProductTitleTextStyle.copyWith(fontSize: 16.0))
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: 250.0,
            child: Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1.5,
              height: 10.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(widget.productDetail,
                style: kProductDetailTextStyle
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedButton = Button.Small;
                    _price = widget.productPriceSmall;
                    _size = 'Small';
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: 45.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: selectedButton == Button.Small ?
                    Colors.redAccent:
                    Colors.transparent,
                    border: Border.all(color: Colors.redAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        selectedButton == Button.Small ? 30.0 : 10.0
                    )),
                  ),
                  child: Center(
                    child: Text('S',
                        style: selectedButton == Button.Small ?
                        kProductSizeButtonActiveTextStyle :
                        kProductSizeButtonTextStyle
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedButton = Button.Medium;
                    _price = widget.productPriceMedium;
                    _size = 'Medium';
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: 45.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: selectedButton == Button.Medium ?
                    Colors.redAccent:
                    Colors.transparent,
                    border: Border.all(color: Colors.redAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        selectedButton == Button.Medium ? 30.0 : 10.0
                    )),
                  ),
                  child: Center(
                    child: Text('M',
                        style: selectedButton == Button.Medium ?
                        kProductSizeButtonActiveTextStyle :
                        kProductSizeButtonTextStyle
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    selectedButton = Button.Large;
                    _price = widget.productPriceLarge;
                    _size = 'Large';
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  width: 45.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: selectedButton == Button.Large ?
                    Colors.redAccent:
                    Colors.transparent,
                    border: Border.all(color: Colors.redAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(
                        selectedButton == Button.Large ? 30.0 : 10.0
                    )),
                  ),
                  child: Center(
                    child: Text('L',
                        style: selectedButton == Button.Large ?
                        kProductSizeButtonActiveTextStyle :
                        kProductSizeButtonTextStyle
                    ),
                  ),
                ),
              ),
            ],
          ),
          AddToBasketButton(
              price: _price,
              onPress: (){
                  Navigator.pushNamed(context, BagScreen.id);
               }
          ),
        ],
      ),
    );
  }
}



