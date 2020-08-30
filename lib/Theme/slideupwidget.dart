import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/buttonRed.dart';

class SlideUpWidget extends StatefulWidget {
  @override
  _SlideUpWidgetState createState() => _SlideUpWidgetState();
}

class _SlideUpWidgetState extends State<SlideUpWidget> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
        color: Color.fromRGBO(24, 51, 98, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
      ),
        height: size.height*10/16,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 4,
                      width: 300.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        onPressed: (){
                        },
                        color: Colors.grey[500],
                        splashColor: Colors.white,
                        hoverColor: Theme.of(context).accentColor,
                        child: Text(''),
                      ),
                    ),
                    Container(
                      height: 4,
                      width: 100.0,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        onPressed: (){print('Sign in form up');},
                        color: Theme.of(context).accentColor,
                        splashColor: Theme.of(context).accentColor,
                        hoverColor: Theme.of(context).accentColor,
                        child: Text(''),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: size.height*0.09/2),
          Text('User Login', style: TextStyle(
            color: Colors.white,
            fontFamily: 'Segoe',
            fontSize: 28.0,
            fontStyle: FontStyle.normal,
          )),
          Divider(
            height: 18.0,
            thickness: 2,
            color: Theme.of(context).accentColor,
            endIndent: 148,
            indent: 150,
          ),
          SizedBox(height: size.height*0.09/3),
          FormFieldContainer(child: RoundedTextField(hintText: 'Your Email', icon: Icons.person, onChanged: (value){})),
          SizedBox(height: size.height*0.09/2),
          FormFieldContainer(child: RoundedPasswordField(hintText: 'Your Password', icon: Icons.lock, onChanged: (value){})),
          SizedBox(height: size.height*0.09/2),
          ButtonRedMain(text: 'Sign In', width: size.width*5/16),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: (){
                print("TODO navigator go back");
              },
              child: Text('Forgotten password?', style: TextStyle(
                fontFamily: 'Segoe',
                color: Colors.white,
                fontSize: 16.0,
              )),
            ),
          ),
        ],
      ),
    );
  }
}



class RoundedTextField extends StatelessWidget {

  final ValueChanged<String> onChanged;
  final String hintText;
  final IconData icon;

  const RoundedTextField({
    Key key,
    this.onChanged,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.black38),
        hintText: hintText,
        border: InputBorder.none,
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {

  final ValueChanged<String> onChanged;
  final String hintText;
  final IconData icon;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.black38),
        hintText: hintText,
        border: InputBorder.none,
      ),
      obscureText: true,
    );
  }
}

class FormFieldContainer extends StatelessWidget {

  final Widget child;
  const FormFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*10/16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(29.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 4.0),
            blurRadius: 3.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: child,
      ),
    );
  }
}


