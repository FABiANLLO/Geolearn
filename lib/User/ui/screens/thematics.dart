import 'package:flutter/material.dart';
import 'package:geolearn/User/ui/widgets/background_content.dart';
import 'package:geolearn/User/ui/widgets/background_content_explore.dart';

import '../../../widgets/appbar_gradient.dart';

class Thematics extends StatefulWidget {
  Thematics({Key key}) : super(key: key);

  @override
  _ThematicsState createState() => _ThematicsState();
}

class _ThematicsState extends State<Thematics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarGradient(height: 300.0, title: 'Explora'),
          Stack(
            children: [BackgroundContentExplore(250.0)],
          )
        ],
      ),
    );
  }
}
