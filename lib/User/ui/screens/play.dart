import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';
import 'package:geolearn/User/ui/widgets/background_content.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

import '../../../widgets/appbar_gradient.dart';

class Play extends StatelessWidget {
  const Play({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarGradient(height: 300.0, title: 'Juega'),
          ListView(
            children: [
              BackgroundContent(130.0),
              // Explore('Países', 'Paises de America', "assets/img/2.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
