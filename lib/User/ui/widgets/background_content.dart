import 'package:flutter/material.dart';
import 'package:geolearn/Test/home.dart';
import 'package:geolearn/Test/quizpage.dart';
import 'package:geolearn/Thematic/ui/widgets/ar_flutter.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';

class BackgroundContent extends StatelessWidget {
  double top;

  BackgroundContent(@required this.top);
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
              name: 'Juega Paises',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/country.png',
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  // in changelog 1 we will pass the langname name to ther other widget class
                  // this name will be used to open a particular JSON file
                  // for a particular language
                  builder: (context) => getjson("Countries"),
                ));
              },
            ),
            Explore(
              name: 'Juega Banderas',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/bandera.png',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("No Disponible en tu Suscripción"),
                ));
              },
            ),
            Explore(
              name: 'Juega Continentes',
              description: 'Test de preguntas',
              urlPhoto: 'assets/img/continents.png',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("No Disponible en tu Suscripción"),
                ));
              },
            ),
            Explore(
              name: 'Realidad Aumentada',
              description: 'Conoce las Maravillas',
              urlPhoto: 'assets/img/ar.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ArFlutter()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
