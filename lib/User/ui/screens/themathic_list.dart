import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/thematic_screen.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';
import 'package:provider/provider.dart';

import '../../../constant.dart';

class ThemathicList extends StatefulWidget {
  @override
  _ThemathicListState createState() => _ThemathicListState();
}

class _ThemathicListState extends State<ThemathicList> {
  UserBloc userBloc;
  @override
  Widget _buildCountriesList(List<Country> countries) {
    if (countries.length == 0) {
      return Center(
        child: Text('No hay Paises para mostrar'),
      );
    }
    return ListView.separated(
      itemBuilder: (BuildContext ctx, int index) {
        final country = countries[index];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.network(
              Constant.imagePrefix + country.flagPath,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(country.name),
          subtitle: Text('Capital: ' + country.capital),
          onTap: () {
            print(country.name);
            Navigator.pushNamed(context, ThemathicScreen.routeName,
                arguments: country);
          },
        );
      },
      separatorBuilder: (BuildContext ctx, int index) => Divider(
        color: Colors.black,
        height: 0.1,
      ),
      itemCount: countries.length,
      padding: EdgeInsets.only(top: 150.0),
    );
  }

  Widget build(BuildContext context) {
    final countries = Provider.of<List<Country>>(context);

    // userBloc = BlocProvider.of<List<Cou>(context);
    return Scaffold(
      // key: _scaffoldKey,
      // appBar: AppBar(
      //   title: Text('Paises'),
      //   // actions: <Widget>[
      //   //   IconButton(
      //   //       icon: Icon(Icons.add_photo_alternate), onPressed: _addMovie)
      //   // ],
      // ),
      body: countries == null
          ? Center(child: CircularProgressIndicator())
          // : _buildCountriesList(countries),
          : Stack(
              children: [
                _buildCountriesList(countries),
                AppbarGradient(
                  height: 150,
                  title: 'Paises',
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0, left: 1.0),
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
                ),
              ],
            ),
      //
    );
  }
}
