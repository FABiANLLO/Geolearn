import 'package:flutter/material.dart';
import 'package:geolearn/User/ui/widgets/body_login.dart';
import 'package:geolearn/User/ui/widgets/banner_login.dart';
import 'package:geolearn/User/ui/widgets/card_login.dart';
import 'package:geolearn/User/ui/widgets/buttonstart.dart';

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
