import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathimage = "assets/img/image.jpg";
  String name = "People Name";
  String details = "1 review 5 photos";
  String coment = "Excelente app";

  Review(this.pathimage, this.name, this.details, this.coment);
  @override
  Widget build(BuildContext context) {
    final userComent = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        coment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComent],
    );
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathimage))));
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[photo, userDetails],
    );
  }
}
