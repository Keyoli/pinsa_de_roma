import 'package:flutter/material.dart';
import 'package:pinsaderoma/components/constant.dart';

class ArticleArea extends StatelessWidget {
  const ArticleArea({
    @required this.sentence,
    this.lowerSpace,
    this.upperSpace,
    this.holderSpace,
  });

  final String sentence;
  final double lowerSpace;
  final double upperSpace;
  final double holderSpace;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: upperSpace),
        Container(
          width: holderSpace,
          margin: EdgeInsets.all(15.0),
          child: Text(
            sentence,
            style: kNavigationScreenHeadline2TextStyle,
          ),
        ),
        SizedBox(height: lowerSpace),
      ],
    );
  }
}

class ContactArea extends StatelessWidget {
  ContactArea({
    @required this.onPressFacebook,
    @required this.onPressInstagram,
    @required this.onPressGmail,
  });

  final Function onPressFacebook;
  final Function onPressInstagram;
  final Function onPressGmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SocialLinkItem(
            title: 'pinsaderoma Official',
            size: 90.0,
            index: 0,
            onPress: onPressFacebook,
          ),
          Container(
            height: 120,
            child: VerticalDivider(
              thickness: 2,
              color: Colors.grey[600],
            ),
          ),
          SocialLinkItem(
            title: 'pinsaderoma Mongolia',
            size: 90.0,
            index: 1,
            onPress: onPressInstagram,
          ),
          Container(
            height: 120,
            child: VerticalDivider(
              thickness: 2,
              color: Colors.grey[600],
            ),
          ),
          SocialLinkItem(
            title: 'pinsaderoma @gmail',
            size: 90.0,
            index: 2,
            onPress: onPressGmail,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SocialLinkItem extends StatelessWidget {
  List<String> socialMediaImages = [
    'images/SocialMedia/facebook.png',
    'images/SocialMedia/instagram.png',
    'images/SocialMedia/gmail.png',
  ];

  SocialLinkItem({
    this.title,
    this.onPress,
    this.size,
    this.index,
  });

  final String title;
  final Function onPress;
  final double size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: onPress,
          child: Image.asset(
            socialMediaImages[index],
            height: 50.0,
            width: 50.0,
          ),
        ),
        Container(
          width: size,
          margin: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          child: Text(
            title,
            style: kNavigationScreenHeadline6TextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
