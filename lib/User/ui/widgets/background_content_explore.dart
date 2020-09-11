import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/themathic_list.dart';
import 'package:geolearn/User/ui/screens/thematic_screen.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';

class BackgroundContentExplore extends StatelessWidget {
  double top;
  UserBloc userBloc;
  BackgroundContentExplore(@required this.top);
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
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
        padding: EdgeInsets.only(top: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Explore(
              name: 'Países',
              description: 'Información de Países del mundo',
              urlPhoto: 'assets/img/country.png',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ThemathicList()));
              },
            ),
            Explore(
              name: 'Banderas',
              description: 'Información de Banderas del mundo',
              urlPhoto: 'assets/img/bandera.png',
              onPressed: () {
                // userBloc.fetchRestCountry("CO");
                // userBloc.addAllCountries();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("No Disponible en tu Suscripción"),
                ));
              },
            ),
            Explore(
              name: 'Continentes',
              description: 'Información de Continentes del mundo',
              urlPhoto: 'assets/img/continents.png',
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("No Disponible en tu Suscripción"),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
