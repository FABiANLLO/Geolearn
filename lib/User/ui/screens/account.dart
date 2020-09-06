import 'package:flutter/material.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';
import 'package:geolearn/User/ui/widgets/profile_header.dart';

class Account extends StatelessWidget {
  const Account({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AppbarGradient('Cuenta'),
        ListView(
          children: <Widget>[ProfileHeader()],
        )
      ],
    );
  }
}
