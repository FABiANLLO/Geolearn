import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/Thematic/ui/widgets/description_thematic.dart';
import 'package:geolearn/Thematic/ui/widgets/header_thematic.dart';
import 'package:geolearn/Thematic/ui/widgets/review_list.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/widgets/country_map.dart';

class ThemathicScreen extends StatefulWidget {
  static const routeName = '~/User/iu/screens/thematic_screen';
  @override
  _ThemathicScreenState createState() => _ThemathicScreenState();
}

class _ThemathicScreenState extends State<ThemathicScreen> {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    final countrie = ModalRoute.of(context).settings.arguments as Country;
    userBloc = BlocProvider.of<UserBloc>(context);
    String description =
        "Es el subcontinente austral de América, o también considerado por muchos, uno de los continentes que conforman el supercontinente de Las Américas. Está atravesada por la línea ecuatorial en su extremo norte, quedando así con la mayor parte de su territorio comprendida dentro del hemisferio sur.";
    String namethematic = "Sudamerica";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionThematic(countrie.name, 5, countrie.overview),
              ReviewList(),
              SizedBox(
                width: double.infinity,
                height: 300.0,
                child: CountryMap(
                    latitude: countrie.coor.latitude,
                    longitude: countrie.coor.longitude,
                    countryName: countrie.name),
              )
              // ReviewList(),
            ],
          ),
          HeaderThematic(),
          Container(
            padding: EdgeInsets.only(top: 45.0, left: 1.0),
            child: SizedBox(
              height: 45.0,
              width: 45.0,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 35.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
