import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/accent3.dart';
import 'package:powerful_daegu/third3.dart';
import 'package:powerful_daegu/main.dart';

class Map3 extends StatefulWidget {
  const Map3({Key? key}) : super(key: key);

  @override
  _Map3 createState() => _Map3();
}

class _Map3 extends State<Map3> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.835960, 128.558076); //관문시장

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("Market3"),
        draggable: true,
        position: LatLng(35.835960, 128.558076)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 17.0,
          ),
        ),
      ),
    );
  }
}
