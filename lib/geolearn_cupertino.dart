import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/account.dart';
import 'package:geolearn/User/ui/screens/play.dart';
import 'package:geolearn/Thematic/ui/screens/thematics.dart';

class GeolearnCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        // backgroundColor: Color(0xFF24B17E),
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.indigo),
              title: Text("Explora")),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad, color: Colors.indigo),
              title: Text("Juega")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text("Cuenta")),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Thematics(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Play(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: Account(),
                  );
                },
              );
              break;
          }
        },
      ),
    );
  }
}
