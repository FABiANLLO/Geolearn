import 'package:flutter/material.dart';
import 'package:geolearn/User/ui/widgets/background_content.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';
import 'package:geolearn/User/ui/widgets/profile_header.dart';

import '../../../widgets/appbar_gradient.dart';
import '../widgets/profile_header.dart';

class Account extends StatelessWidget {
  const Account({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarGradient('Cuenta'),
          BackgroundContent(270),
          ListView(
            children: [ProfileHeader()],
          )
        ],
      ),
    );
    // return Stack(
    //   children: <Widget>[
    //     AppbarGradient('Cuenta'),
    //     ListView(
    //       children: <Widget>[ProfileHeader()],
    //     )
    //   ],
    // );
  }
}
