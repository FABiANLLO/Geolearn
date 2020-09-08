import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/account.dart';
// import 'package:geolearn/User/ui/screens/play.dart';
import 'package:geolearn/User/ui/screens/play_screen.dart';
import 'package:geolearn/User/ui/screens/thematics.dart';

import 'Thematic/ui/screens/thematic_screen.dart';

class DisplayView extends StatelessWidget {
  final int count;
  DisplayView(@required this.count);
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      switch (count) {
        case 0:
          return BlocProvider<UserBloc>(bloc: UserBloc(), child: Thematics());
        case 1:
          return BlocProvider<UserBloc>(bloc: UserBloc(), child: PlayScreen());
        case 2:
          return BlocProvider<UserBloc>(bloc: UserBloc(), child: Account());
          break;
        default:
      }
    });
  }
}
