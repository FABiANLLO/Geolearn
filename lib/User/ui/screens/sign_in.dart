import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolearn/User/ui/screens/login.dart';
import 'package:geolearn/User/ui/widgets/buttonstart.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/geolearn.dart';
import 'package:geolearn/geolearn_cupertino.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return Geoleran();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
        body: Stack(children: <Widget>[
      Login(),
      // ButtonGreen(
      //   text: "Iniciar con Gmail",
      //   onPressed: () {
      //     userBloc.SignIn().then((FirebaseUser user) => print("El usuario es ${user.displayName}"));
      //   },
      //   width: 300.0,
      //   height: 50.0,
      // ),
      ButtonStart(() => {
            userBloc.signOut(),
            userBloc.SignIn().then((FirebaseUser user) =>
                print("El usuario es ${user.displayName}"))
          }),
    ]));
  }
}
