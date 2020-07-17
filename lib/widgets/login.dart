import 'package:flutter/material.dart';
import 'package:geolearn/widgets/body_login.dart';
import 'package:geolearn/widgets/banner_login.dart';
import 'package:geolearn/widgets/card_login.dart';
import 'package:geolearn/widgets/buttonstart.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BodyLogin(),
          CardLogin(),
          ButtonStart(),
          BannerLogin("assets/img/logo.png")
        ],
      ),
    );
  }
}
