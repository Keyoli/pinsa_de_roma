import 'package:flutter/material.dart';



 Widget articlechecker({BuildContext context, int articleNumber}){
  for(int i = 0; i < articleNumber; i++){
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Text(
        'Lorem Ipsum Lorem ipsum dolor sit amet, '
            'consetetur sadipscing elitr, sed diam nonumy '
            'eirmod tempor invidunt ut labore et dolore magna '
            'aliquyam erat, sed diam voluptua. At vero eos et '
            'accusam et justo duo dolores et ea rebum. Stet '
            'clita kasd gubergren, no sea takimata sanctus est Lorem '
            'ipsum dolor sit amet. Lorem ipsum dolor sit amet, '
            'consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
  return null;
}

List<Widget> articleBanker = [];

Container articleBank(BuildContext context){
  return Container(
    margin: EdgeInsets.all(15.0),
    child: Text(
          'Lorem Ipsum Lorem ipsum dolor sit amet, '
          'consetetur sadipscing elitr, sed diam nonumy '
          'eirmod tempor invidunt ut labore et dolore magna '
          'aliquyam erat, sed diam voluptua. At vero eos et '
          'accusam et justo duo dolores et ea rebum. Stet '
          'clita kasd gubergren, no sea takimata sanctus est Lorem '
          'ipsum dolor sit amet. Lorem ipsum dolor sit amet, '
          'consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt',
      style: Theme.of(context).textTheme.headline2,
    ),
  );
}

class ArticleArea extends StatelessWidget {

  final String articleabout;
  final int numberOfArticle;

  const ArticleArea({
    Key key, this.numberOfArticle, this.articleabout,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int number = numberOfArticle;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              articleabout,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}