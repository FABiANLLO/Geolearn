import 'dart:async';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:geolearn/Thematic/ui/screens/thematics.dart';
import 'package:geolearn/User/bloc/bloc_user.dart';
import 'package:geolearn/User/ui/screens/account.dart';

class DisplayViewThematics extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return BlocProvider<UserBloc>(bloc: UserBloc(), child: Thematics());
    });
  }
}
