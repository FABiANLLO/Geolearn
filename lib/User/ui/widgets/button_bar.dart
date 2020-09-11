import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/widgets/circle_button.dart';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 0.0),
        child: Row(
          children: <Widget>[
            CircleButton(
                true,
                Icons.exit_to_app,
                20.0,
                Color.fromRGBO(255, 255, 255, 1),
                () => {
                      userBloc.signOut(),
                    }),
          ],
        ));
  }
}
