import 'package:flutter/material.dart';
import 'package:geolearn/widgets/user_info.dart';
import 'package:geolearn/widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      child: Column(
        children: <Widget>[
          UserInfo("assets/img/image.jpg", 'Julieth Segura',
              'ju.segura@udla.edu.co'),
          ButtonsBar()
        ],
      ),
    );
  }
}
