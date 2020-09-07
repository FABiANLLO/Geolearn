import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolearn/User/model/user.dart';
import 'package:geolearn/User/ui/screens/login.dart';
import 'package:geolearn/User/ui/widgets/buttonstart.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/geolearn.dart';

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
      ButtonStart(() => {
            userBloc.signOut(),
            userBloc.SignIn().then((FirebaseUser user) {
              userBloc.updateUserData(User(
                uid: user.uid,
                name: user.displayName,
                email: user.email,
                photoURL: user.photoUrl,
              ));
            }),
          })
    ]));
  }
}
