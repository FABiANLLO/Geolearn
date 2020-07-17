import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/sign_in.dart';
import 'package:geolearn/widgets/description_content.dart';
import 'package:geolearn/Thematic/ui/screens/thematics.dart';
import 'package:geolearn/geolearn.dart';
import 'package:geolearn/User/ui/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'GeoLearn',
          home: SignIn(),
          debugShowCheckedModeBanner: false,
        ),
        bloc: UserBloc());
  }
}
