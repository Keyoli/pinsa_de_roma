import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/Theme/footersection.dart';
import 'package:pinsaderoma/autentication/landingscreen.dart';
import 'package:pinsaderoma/screens/products.dart';
import 'navigation_screens/about_screen.dart';
import 'navigation_screens/contact_screen.dart';
import 'bag_screen.dart';
import 'navigation_screens/settings_screen.dart';


String status = 'Log in';

var bannerItem = ['Salad' , 'Pinsa' , 'Drink' , 'Chicken'];
var bannerImage = [
  'images/pizza.jpg',
  'images/chicken.jpg',
  'images/salad.jpg',
  'images/soda.jpg',
];


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




class CatagoreMain extends StatefulWidget {

  @override
  _CatagoreMainState createState() => _CatagoreMainState();

}


class _CatagoreMainState extends State<CatagoreMain> {

  String _user = 'MosQuzz';


  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    Future<List<Widget>> createList() async {
      List<Widget> items = new List<Widget>();
      String dataString = await DefaultAssetBundle.of(context).loadString("assets/data.json");
      List<dynamic> dataJSON = json.decode(dataString);

      dataJSON.forEach((object) {
        items.add(
          Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(object["placeImage"], width:340 , height: 180.0, fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                ),
              ),
          );
      });
      return items;
    }


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
          elevation: 12,
          bottom: PreferredSize(
              child: Container(
                height: 26.0,
              ),
              preferredSize: Size.fromHeight(26.0)),
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
                          builder: (context) => AboutScreen(),
                        ));
                      },
                      child: _textStyling('About'),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => ContactScreen(),
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
                          builder: (context) => UserSettingsScreen(),
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
          width: screenWidth,
          height: screenHeight,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BannerWidgetArea(),
                  FooterArea(),
                ],
              ),
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
          backgroundColor: Colors.white,
          title: Text('Autentication Warning!',
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 25.0,
                fontFamily: 'Segoe',
                fontWeight: FontWeight.bold,
              )),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$_user ,You have been successfully logged out',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'Calibri'
                  )),
              ],
            ),
          ),
          actions: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2.0, 1.0),
                    color: Colors.black54,
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: FlatButton(
                  child: Text('Proceed',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          fontFamily: 'Segoe'
                      )),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


class BannerWidgetArea extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller = PageController(viewportFraction: 0.8, initialPage: 1);
    List<Widget> banners = [];

    for(int i = 0; i < bannerItem.length; i++){
      var bannerView = foodItems(title: bannerItem[i], shortDesc: "test", imageUrl: bannerImage[i],);
      banners.add(bannerView);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container (
          margin: EdgeInsets.all(10.0),
          child: Text('Rated Product',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              )),
        ),
        const Divider(
          color: Color.fromRGBO(255, 40, 40, 100),
          height: 3,
          thickness: 3,
          indent: 10,
          endIndent: 210,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 5.0, 0, 2.0),
          child: Text('Ultimate italian dish serve your table',
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              )),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10.0, 2.0, 0, 2.0),
          child: Text('24 hour via Qualified taste',
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star, size: 25, color: Colors.yellow[800]),
              Icon(Icons.star_border, size: 25, color: Colors.yellow[800]),
            ],
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight*7/16,
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: banners,
          ),
        ),
      ],
    );
  }
}

class foodItems extends StatelessWidget {

  String title;
  String shortDesc;
  String imageUrl;

  foodItems({this.title, this.shortDesc, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(imageUrl, fit: BoxFit.cover,),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductMain()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent, Colors.black54,
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title , style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      )),
                      Text(shortDesc , style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 16.0,
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
