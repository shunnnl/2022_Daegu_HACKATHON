import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent.dart';
import 'package:study2/first.dart';
import 'package:study2/second.dart';
import 'package:study2/third.dart';
import 'package:study2/main.dart';

class Marketfood2Vege extends StatefulWidget {
  const Marketfood2Vege({Key? key}) : super(key: key);

  @override
  _Marketfood2Vege createState() => _Marketfood2Vege();
}

class _Marketfood2Vege extends State<Marketfood2Vege> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.835960, 128.558076); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("동남식당"),
      draggable: true,
      position: LatLng(35.8361337, 128.5572554),
      infoWindow: InfoWindow(
        //popup info
        title: 'Dongnam Restaurant',
        snippet: 'Dongnam sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueGreen), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("한나식당"),
      draggable: true,
      position: LatLng(35.8363119, 128.5593819),
      infoWindow: InfoWindow(
        //popup info
        title: 'Hannah Restaurant',
        snippet: 'Hanna sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("민속마차"),
      draggable: true,
      position: LatLng(35.837106, 128.5582175),
      infoWindow: InfoWindow(
        //popup info
        title: 'Folk carriage',
        snippet: 'Minsog-macha',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("토담"),
      draggable: true,
      position: LatLng(35.8370886, 128.5590498),
      infoWindow: InfoWindow(
        //popup info
        title: 'Todam',
        snippet: 'Todam',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("종가집분식"),
      draggable: true,
      position: LatLng(35.834777, 128.5605311),
      infoWindow: InfoWindow(
        //popup info
        title: 'Jong-gajib Restaurant',
        snippet: 'Jong-gajib bunsig',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("김금옥"),
      draggable: true,
      position: LatLng(35.8358843, 128.5583108),
      infoWindow: InfoWindow(
        //popup info
        title: 'Gimgeumok Restaurant',
        snippet: 'Gimgeumok',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gwanmun Market Vegetarian Food'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 30.0,
          ),
        ),
      ),
    );
  }
}
