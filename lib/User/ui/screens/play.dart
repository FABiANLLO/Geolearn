import 'package:flutter/material.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

class Play extends StatelessWidget {
  const Play({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[AppbarGradient('Juega')],
    );
  }
}
