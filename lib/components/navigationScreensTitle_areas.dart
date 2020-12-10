import 'package:flutter/material.dart';
import 'constant.dart';

class ScreensTitleArea extends StatelessWidget {
  ScreensTitleArea({
    this.title,
    this.onTap,
  });

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(26.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: kScreenTitleTextStyle,
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 45.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ScreensSubTitleArea extends StatelessWidget {
  ScreensSubTitleArea(
      {@required this.title,
      this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.marginBottom});

  final String title;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 350.0,
          margin: EdgeInsets.only(left: 30.0),
          child: Divider(
            height: 5.0,
            color: Colors.lightBlueAccent,
            thickness: 2,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: marginLeft,
              right: marginRight,
              top: marginTop,
              bottom: marginBottom),
          child: Text(
            title,
            style: kNavigationScreenHeadline4TextStyle,
          ),
        ),
      ],
    );
  }
}

class SettingsTitleArea extends StatelessWidget {
  SettingsTitleArea({
    this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Container(
          width: 350.0,
          child: Divider(
            height: 15.0,
            color: Color.fromRGBO(63, 203, 246, 30),
            thickness: 2,
          ),
        ),
        Text(
          title,
          style: kSettingsHeaderlineTextStyle,
        ),
      ],
    );
  }
}

class ChatTitleArea extends StatelessWidget {
  ChatTitleArea({
    this.holderSize,
    this.title,
    this.contentLeftSize,
    this.contentRightSize,
  });

  final double holderSize;
  final String title;
  final double contentLeftSize;
  final double contentRightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: contentLeftSize,
        right: contentRightSize,
      ),
      height: holderSize,
      decoration: kNavigationScreenHeaderContainerDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: kScreenTitleTextStyle.copyWith(
              fontSize: 45.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
