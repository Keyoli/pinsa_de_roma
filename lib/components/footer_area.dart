import 'package:flutter/material.dart';

class FooterArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight*2/16,
      color: Colors.black,
      child: Center(
        child: Text('Pinsa Mongolia © 2020 Pinsa de Roma',
            style: TextStyle(color: Colors.white, fontSize: 18.0,)
        ),
      ),
    );
  }
}
