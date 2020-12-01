import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/MosQuzz/AndroidStudioProjects/pinsa_de_roma/lib/screens/autentication/landing_screen.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';

import 'navigation_screens/adminSettings.dart';


var _user = 'MosQuzz';
var _userphone = '89973682';


List<String> _title = [
  'Order',
  'Type',
  'Date',
];

List<String> _orderLocationDummy = [
  'Bayngol, 9 khoroo, 3,4 khoroolol, 26 bair, 30 toot',
  'Zaisan, 12 khoroo, Uchral khoroolol, 1206 bair, 121 toot',
  'Han uul, 7 khoroo, Viva City khoroolol, C block, A4 bair, 001 toot',
];

List<String> _dummyTime = [
  'Today 12:30PM Mongolia UTF',
  'Yesturday 2:30PM Mongolia UTF',
  'Last week 5:20AM Mongolia UTF',
  'Today 6:00PM Mongolia UTF',
];

int _track = 1;


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


class AdminScreen extends StatefulWidget {

  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 12.0,
          bottom: PreferredSize(
              child: Container(),
              preferredSize: Size.fromHeight(65.0)),
          title: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
              height: 45.0,
              width: 300.0,
              child: TextFieldConstrain(child: AdminSearchPanel(prokey: false, hintText: 'Search',)),
            ),
          ),
        ),

        drawer: Drawer(
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
                      icon: Icon(Icons.cancel, color: Colors.black87, size: 45.0,),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: _textStyling('Completed'),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: _textStyling('Deleted'),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: _textStyling('Drafted'),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AdminSettingsScreen()));
                    },
                    child: _textStyling('Settings'),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LandingPage()));
                    },
                    child: _textStyling('Logout'),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0,),
              child: Center(
                child: Container(
                  height: 60.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 95, 95, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(3.0, 2.0,),
                        blurRadius: 2.0,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(_title[0],
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42.0,
                        fontFamily: 'Calibri'
                    )),
                  ),
                ),
              ),
            ),
            //Divider
            Container(
              width: double.infinity,
              child: Divider(
                height: 1.0,
                thickness: 0.5,
                color: Colors.black54,
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 5.0, bottom: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Order $_track',
                          style: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          )),
                      Container(
                        child: FloatingActionButton(
                          elevation: 0.0,
                          heroTag: "btn1",
                          onPressed: () {
                            print('Gesture Detecter go back');
                          },
                          child: Icon(Icons.cancel, size: 50.0, color: Colors.redAccent),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onLongPress: (){
                    print('Do alert');
                  },
                  child: OrderInformation(),
                ),
                SizedBox(
                  height: size.height*0.9/80,
                ),
                OrderByInformation(),
                ShortDetail(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class OrderByInformation extends StatefulWidget {
  @override
  _OrderByInformationState createState() => _OrderByInformationState();
}

class _OrderByInformationState extends State<OrderByInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*3/16,
      width: size.width*15/16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1.0, 4.0),
              blurRadius: 2.5,
              spreadRadius: 1.5,
              color: Colors.grey[600],
            ),
          ]
      ),
      //Right shahagdah fold after pressed down button
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:20.0, top: 30.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 160.0,
                          child: Text( _dummyTime[0],
                              style: TextStyle(color: Colors.black87, fontSize: 20.0, fontFamily: 'Calibri'))
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100.0,
                child: VerticalDivider(
                  thickness: 1.2,
                  width: 2.0,
                  color: Colors.black54,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:28.0, top: 30.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 150.0,
                          child: Column(
                            children: <Widget>[
                              Text( '$_user contact:',
                                  style: TextStyle(color: Colors.black87, fontSize: 20.0, fontFamily: 'Calibri')),
                              Text( '$_userphone',
                                  style: TextStyle(color: Colors.black87, fontSize: 21.0, fontFamily: 'Calibri', fontWeight: FontWeight.bold)),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right:60,
            top: 60,
            child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Icon(Icons.arrow_drop_down, size: 70.0),
                ),
                onTap: (){
                  print('Do here');
                }
            ),
          ),
        ],
      ),
    );
  }
}


class OrderInformation extends StatefulWidget {
  @override
  _OrderInformationState createState() => _OrderInformationState();
}

class _OrderInformationState extends State<OrderInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              
            ],
          );
        },
      );
    }

    return  Container(
      height: size.height*4.2/16,
      width: size.width*15/16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: Colors.blueAccent,
          boxShadow: [
            BoxShadow(
              offset: Offset(1.0, 4.0),
              blurRadius: 2.5,
              spreadRadius: 1.5,
              color: Colors.grey[600],
            ),
          ]
      ),
      //Right shahagdah fold after pressed down button
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Location:', style: TextStyle(color: Colors.white, fontSize: 28.0, fontFamily: 'Calibri', fontWeight: FontWeight.bold)),
                  Container(
                      width: 270.0,
                      child: Text( _orderLocationDummy[0],
                          style: TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Calibri'))
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Icon(Icons.arrow_drop_down, size: 70.0),
                ),
                onTap: (){
                  print('Do here');
                }
            ),
          ),
          Positioned(
            top: -12,
            bottom: -48,
            left: 30,
            child: Container(
              width: 300.0,
              child: Divider(
                thickness: 1.0,
                height: 2.0,
                color: Colors.white60,
              ),
            ),
          ),
          Positioned(
            top:100,
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Type & Name:', style: TextStyle(color: Colors.white, fontSize: 25.0, fontFamily: 'Calibri', fontWeight: FontWeight.bold)),
                    Container(
                        width: 270.0,
                        child: Text( _productType[0] + 'type, ' + _productName[0],
                            style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: 'Calibri'))
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 115,

            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    color: Color.fromRGBO(47, 255, 40, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShortDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15.0, bottom: 20.0,),
          child: Container(
            height: 50.0,
            width: 180.0,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3.0, 2.0,),
                  blurRadius: 2.0,
                  color: Colors.black54,
                ),
              ],
            ),
            child: Center(
              child: Text('Total 999999' + '₮',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0,
                      fontFamily: 'Calibri'
                  )),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0, bottom: 20.0,),
          child: Container(
            height: 50.0,
            width: 180.0,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3.0, 2.0,),
                  blurRadius: 2.0,
                  color: Colors.black54,
                ),
              ],
            ),
            child: Center(
              child: Text('by $_user',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: 'Calibri'
                  )),
            ),
          ),
        ),
      ],
    );
  }
}


ListTile _textStyling(String text){
  return ListTile(
    title: Text(text,
      style: TextStyle(
          color: Colors.black87,
          fontSize: 28.0,
          fontFamily: 'Calibri'
      ),
    ),
  );
}

class AdminSearchPanel extends StatefulWidget {

  final String hintText;
  final bool prokey;

  const AdminSearchPanel({
    Key key, this.prokey, this.hintText,
  }) : super(key: key);

  @override
  _AdminSearchPanelState createState() => _AdminSearchPanelState();
}

class _AdminSearchPanelState extends State<AdminSearchPanel> {

  Color _color;
  int _check;

  Widget CupertinoTextStyle(String param){
    return Text(param,
    style: TextStyle(
      fontSize: 30.0,
      fontFamily: 'Calibri',
      fontWeight: FontWeight.bold,
      color: _check != 0 ? _color = Colors.black87 : Colors.redAccent, //Shiideegui baigaa, Uchirn save 1 to 4 array tuuniig yj yg selected hiisniign ulaan bolgoh talaar sanaa oloogui
    ));
  }

  showSearchFilterBottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return CupertinoPicker(
          onSelectedItemChanged: (int save){
            setState(() {
              _check = 0;
            });
          },
          itemExtent: 50.0,
          children: <Widget>[
            CupertinoTextStyle('All'),
            CupertinoTextStyle('Date'),
            CupertinoTextStyle('Type'),
            CupertinoTextStyle('User'),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 1.8),
      child: TextField(
        onChanged: (value){
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          suffixIcon: Container(
            child: IconButton(
              onPressed: (){
                setState(() {
                  showSearchFilterBottomSheet(context);
                });
              },
                icon: Icon(Icons.filter_list),
            ),
          ),
          icon: Icon(Icons.search),
        ),
        obscureText: widget.prokey,
        cursorColor: Colors.white,
      ),
    );
  }
}