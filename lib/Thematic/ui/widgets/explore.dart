import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  // final VoidCallback onPressed;
  final VoidCallback onPressed;
  String name;
  String description;
  String urlPhoto;
  Explore(
      {Key key,
      @required this.name,
      @required this.description,
      @required this.urlPhoto,
      @required this.onPressed});

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    final thematicName = Container(
      margin: EdgeInsets.only(left: 20.0, top: 30.0),
      child: Text(
        widget.name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );
    final thematicDescription = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        widget.description,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[thematicName, thematicDescription],
    );
    final thematicPhoto = Container(
        margin: EdgeInsets.only(left: 20.0),
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(widget.urlPhoto))));

    final content = InkWell(
      child: Container(
        // alignment: Alignment.center,
        width: 350.0,
        height: 100.0,
        margin: EdgeInsets.only(bottom: 20.0),
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0))
            ],
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: <Widget>[thematicPhoto, userDetails],
        ),
      ),
    );
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        width: 350.0,
        height: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFffffff), //arriba
                  Color(0xFFEAEAEA) //bajo
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Row(
          children: <Widget>[thematicPhoto, userDetails],
        ),
      ),
    );
  }
}
