import 'package:flutter/material.dart';
import 'package:geolearn/display_view.dart';

class Geoleran extends StatefulWidget {
  Geoleran({Key key}) : super(key: key);

  @override
  _GeoleranState createState() => _GeoleranState();
}

class _GeoleranState extends State<Geoleran> {
  int indexTap = 0; 

  final List<Widget> widgetsChildren = [
    DisplayView(0),
    DisplayView(1),
    DisplayView(2)
  ];

  void OnTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        isMaterialAppTheme: true,
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF24B17E), primaryColor: Colors.white),
        child: BottomNavigationBar(
          onTap: OnTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), title: Text("Explora")),
            BottomNavigationBarItem(
                icon: Icon(Icons.gamepad), title: Text("Juega")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Cuenta"))
          ],
        ),
      ),
    );
  }
}
