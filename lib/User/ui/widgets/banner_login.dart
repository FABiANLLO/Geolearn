import 'package:flutter/material.dart';

class BannerLogin extends StatelessWidget {
  String pathImage;
  BannerLogin(this.pathImage);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 110.0,
      width: 450.0,
      margin: EdgeInsets.only(top: 75.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
        // borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
