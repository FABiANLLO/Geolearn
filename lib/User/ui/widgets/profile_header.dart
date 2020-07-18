import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/model/user.dart';
import 'package:geolearn/User/ui/widgets/user_info.dart';
import 'package:geolearn/User/ui/widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );
  }
  // return Container(
  //   margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
  //   child: Column(
  //     children: <Widget>[
  //       UserInfo("assets/img/image.jpg", 'Julieth Segura',
  //           'ju.segura@udla.edu.co'),
  //       ButtonsBar()
  //     ],
  //   ),
  // );

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logeado");
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la info")
          ],
        ),
      );
    } else {
      print("Logeado");
      user = User(
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoURL);
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[UserInfo(user), ButtonsBar()],
        ),
      );
    }
  }
}
