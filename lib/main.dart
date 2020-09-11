import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/repository/cloud_firestore_api.dart';
import 'package:geolearn/User/ui/screens/sign_in.dart';
import 'package:geolearn/User/ui/screens/thematic_screen.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _movisService = CloudFirestoreAPI();
    return MultiProvider(
      providers: [
        StreamProvider(create: (_) => _movisService.fetchAllCountries()),
        // StreamProvider(create: (_) => _movisService.addAllCountries())
      ],
      child: BlocProvider(
          child: MaterialApp(
            title: 'GeoLearn',
            home: SignIn(),
            debugShowCheckedModeBanner: false,
            routes: {
              ThemathicScreen.routeName: (_) => ThemathicScreen(),
            },
          ),
          bloc: UserBloc()),
    );
  }
}
