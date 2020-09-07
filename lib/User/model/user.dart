import 'package:flutter/material.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final int testApproved;

  User(
      {Key key,
      @required this.uid,
      @required this.name,
      @required this.email,
      @required this.photoURL,
      this.testApproved});
}
