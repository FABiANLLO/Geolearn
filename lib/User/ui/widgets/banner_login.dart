import 'package:flutter/material.dart';

class BannerLogin extends StatelessWidget {
  String pathImage;
  BannerLogin(this.pathImage);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150.0,
      left: 10.0,
      right: 10.0,
      child: Container(
        // alignment: Alignment.center,
        height: 110.0,
        width: 460.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage(pathImage)),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
