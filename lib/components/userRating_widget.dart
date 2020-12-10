import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserRate extends StatefulWidget {
  @override
  _UserRateState createState() => _UserRateState();
}

class _UserRateState extends State<UserRate> {
  final _ratingController = TextEditingController();
  double _rating;

  @override
  void initState() {
    _ratingController.text = '3.0';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 40.0,
        ),
        RatingBar.builder(
          initialRating: 2,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 25.0,
          itemBuilder: (context, _) =>
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
              print(_rating);
            });
            //print(_rating);
          },
          updateOnDrag: true,
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
