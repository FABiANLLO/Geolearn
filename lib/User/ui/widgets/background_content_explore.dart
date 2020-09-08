import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';

class BackgroundContentExplore extends StatelessWidget {
  double top;

  BackgroundContentExplore(@required this.top);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // margin: EdgeInsets.only(top: 250.0, left: 30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 35.0,
                  offset: Offset(0.0, 17.0))
            ]),
        padding: EdgeInsets.only(top: 70.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Explore(
              name: 'Paises',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/1.jpg',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Navegando Paises"),
                ));
              },
            ),
            Explore(
              name: 'Banderas',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/2.jpg',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Navegando Banderas"),
                ));
              },
            ),
            Explore(
              name: 'Continentes',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/3.jpg',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Navegando Continentes"),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
