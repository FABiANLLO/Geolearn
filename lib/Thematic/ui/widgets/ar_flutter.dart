import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArFlutter extends StatefulWidget {
  ArFlutter({Key key}) : super(key: key);

  @override
  _ArFlutterState createState() => _ArFlutterState();
}

class _ArFlutterState extends State<ArFlutter> {
  ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arcoreController) {
    arCoreController = _arcoreController;
    _addSphere(arCoreController);
    _addCube(arCoreController);
    _addCyclinder(arCoreController);
  }

  _addSphere(ArCoreController _arcoreController) {
    final earth = ArCoreReferenceNode(
        objectUrl: 'https://solarsystem.nasa.gov/gltf_embed/2393',
        position: vector.Vector3(0, 0, -1));

    final material =
        ArCoreMaterial(color: Colors.green, metallic: 2.0, reflectance: 1);
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);

    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(
        0,
        0,
        -1,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }

  _addCyclinder(ArCoreController _arcoreController) {
    final material = ArCoreMaterial(color: Colors.red, reflectance: 1);
    final cylinder =
        ArCoreCylinder(materials: [material], radius: 1, height: 0.2);
    final node = ArCoreNode(
      shape: cylinder,
      position: vector.Vector3(
        0,
        -2.5,
        -3.0,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }

  _addCube(ArCoreController _arcoreController) {
    final material = ArCoreMaterial(color: Colors.blue, metallic: 2.0);
    final cube =
        ArCoreCube(materials: [material], size: vector.Vector3(0.7, 0.7, 2.0));
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(
        -0.1,
        -0.8,
        -3,
      ),
    );

    _arcoreController.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }
}
