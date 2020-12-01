import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/TextFieldConstrain.dart';


class PurchaseMain extends StatefulWidget {


  @override
  _PurchaseMainState createState() => _PurchaseMainState();
}

class _PurchaseMainState extends State<PurchaseMain> {


  bool _check;
  String _user = 'MosQuzz';
  Color _colorOfPay = Colors.white60;
  Color _colorOfPay2 = Colors.white60;

  var _color = Colors.grey[600];
  var _color2 = Colors.grey[600];
  int _defaultPrice = 19800;

  void animatedContainer() {
    _color = Colors.redAccent;
    _color2 = Colors.grey[500];
  }

  void animatedContainer2() {
    _color = Colors.grey[500];
    _color2 = Colors.redAccent;
  }

  void purchaseTypeAnimation(){
    if(_check == true){
        _check = false;
        _colorOfPay = Colors.redAccent;
        _colorOfPay2 = Colors.white60;
    } else {
      _colorOfPay2 = Colors.redAccent;
      _colorOfPay = Colors.white60;
      _check = true;
    }
  }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Purchase',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline3,
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          heroTag: "btn3",
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white,
                            size: 45.0,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            animatedContainer();
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          height: 75.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(25.0)),
                            border: Border.all(color: _color, width: 3.0),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Delivery Service',
                                style: TextStyle(
                                  color: _color,
                                  fontSize: 27.0,
                                  fontFamily: 'Segoe',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            animatedContainer2();
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          height: 75.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(25.0)),
                            border: Border.all(color: _color2, width: 3.0),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Restaurant Order',
                                style: TextStyle(
                                  color: _color2,
                                  fontSize: 27.0,
                                  fontFamily: 'Segoe',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Phone number', style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Colors.grey[600],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldConstrain(color: Colors.grey[100], child: TextFieldArea(hintText: 'Reqiured,', prokey: false)),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      UserFriendly(user: _user, word: 'Thank you '),
                    ],
                  ),

                  //Location 1
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Location 1', style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Colors.grey[600],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      //cupertinSeletor(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FlatButton(
                            onPressed: (){
                                showModelBottomSheetPicker(context);
                            },
                            color: Colors.white60,
                            child: Container(
                              height: 100.0,
                              width: 200.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Location 3', style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Colors.grey[600],
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFieldBioConstrain(child: TextFieldArea(hintText: 'Type your destination for the order,', prokey: false)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text('Purchase Type', style: Theme.of(context).textTheme.headline4),
                        ),
                        Center(
                          child: Container(
                            width: 200.0,
                            child: Divider(
                              color: Colors.blueAccent,
                              thickness: 2.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          setState(() {
                            purchaseTypeAnimation();
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 30),
                          height: 50.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.5, color: _colorOfPay),
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                          ),
                          child: Center(
                            child: Text(
                                'Visa Card', style: TextStyle(
                              color: _colorOfPay,
                              fontSize: 22.0,
                              fontFamily: 'Calibri',
                            )),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: (){
                          setState(() {
                            purchaseTypeAnimation();
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 30),
                          height: 50.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2.5, color: _colorOfPay2),
                            borderRadius: BorderRadius.all(Radius.circular(35.0)),
                          ),
                          child: Center(
                            child: Text(
                                'Pay Cash', style: TextStyle(
                              color: _colorOfPay2,
                              fontSize: 22.0,
                              fontFamily: 'Calibri',
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top:40.0),
                    child: Center(
                        child: ProceedButtonTo(width: 380.0, text: 'PROCEED $_defaultPrice TG',)
                    ),
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

class UserFriendly extends StatelessWidget {
  const UserFriendly({
    Key key, this.word, this.user,
  }) : super(key: key);

  final String word;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 275.0, top: 15.0, bottom: 0.0),
      child: Column(
        children: <Widget>[
          Text(word,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 5.0,
          ),
          Text(' $user!',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Calibri',
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

class ProceedButtonTo extends StatelessWidget {

  final String text;
  final double width;

  const ProceedButtonTo({
    Key key, this.text, this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0), topRight: Radius.circular(28.0),),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0.0, 2.0),
              blurRadius: 1.0,
              spreadRadius: 2.0,
            )
          ]
      ),
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(28.0), topRight: Radius.circular(28.0),),
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
          onPressed: (){
           print('pop if pay by cash ');
          },
          color: Colors.redAccent,
          child: Text(text, style: TextStyle( color: Colors.white, fontSize: 30.0, fontFamily: 'Segoe', fontWeight: FontWeight.bold)),
          splashColor: Theme.of(context).accentColor,
          focusColor: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

void showModelBottomSheetPicker(context){
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true ,
      builder: (BuildContext context)
      {
        return Container(
          color: Colors.white,
          height: 300.0,
          //child: //cupertinSeletor(),
        );
      });
}