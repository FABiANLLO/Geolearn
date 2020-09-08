import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';
import 'package:geolearn/User/ui/widgets/background_content.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

class PlayScreen extends StatefulWidget {
  PlayScreen({Key key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppbarGradient(height: 300.0, title: 'Juega'),
          Stack(
            children: [
              BackgroundContent(200.0),
            ],
          )
          // Stack(
          //   children: [
          //     ListView(
          //       children: [
          //         Explore(
          //           name: 'Juega Paises',
          //           description: 'Test de preguntas',
          //           urlPhoto: 'assets/img/2.jpg',
          //           onPressed: () {
          //             Scaffold.of(context).showSnackBar(SnackBar(
          //               content: Text("Navegando"),
          //             ));
          //           },
          //         ),
          //       ],
          //     )
          //   ],
          // )
          // Column(
          //   children: [
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.2,
          //     ),
          //     ListView(
          //       children: [
          //         Explore(
          //           name: 'Juega Paises',
          //           description: 'Test de preguntas',
          //           urlPhoto: 'assets/img/2.jpg',
          //           onPressed: () {},
          //         ),
          //       ],
          //     )
          //   ],
          // )
          // ListView(
          //   children: <Widget>[
          //     Explore(
          //       name: 'Juega Paises',
          //       description: 'Test de preguntas',
          //       urlPhoto: 'assets/img/2.jpg',
          //       onPressed: () {},
          //     ),
          //     Explore(
          //       name: 'Juega Banderas',
          //       description: 'Test de preguntas',
          //       urlPhoto: 'assets/img/2.jpg',
          //       onPressed: () {},
          //     ),
          //     Explore(
          //       name: 'Juega Continentes',
          //       description: 'Test de preguntas',
          //       urlPhoto: 'assets/img/2.jpg',
          //       onPressed: () {},
          //     ),
          //     Explore(
          //       name: 'Realidad Aumentada',
          //       description: 'Conoce las maravillas del mundo',
          //       urlPhoto: 'assets/img/2.jpg',
          //       onPressed: () {},
          //     ),
          //     // AppbarGradient(height: 300.0, title: 'Juega'),
          //     // BackgroundContent(130.0),
          //   ],
          // ),
          // AppbarGradient(height: 300.0, title: 'Juega'),
          // BackgroundContent(130.0),
        ],
      ),
    );
  }
}
