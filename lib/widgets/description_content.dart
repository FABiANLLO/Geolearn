import 'package:flutter/material.dart';

class Description_Content extends StatelessWidget {
  // return BlocProvider(
  //     child: MaterialApp(
  //       title: 'Geolearn App',
  //     ),
  //     bloc: UserBloc());

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      child: Text(
        "Hola Mama",
        style: TextStyle(fontSize: 16.0),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );

    final title_definition = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            "Hola",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_definition, description],
    );
  }
}
