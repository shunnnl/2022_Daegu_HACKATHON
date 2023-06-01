import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent1.dart';
import 'package:study2/first.dart';
import 'package:study2/marketfood1.dart';
import 'package:study2/third1.dart';
import 'package:study2/main.dart';

class Veget1 extends StatefulWidget {
  const Veget1({Key? key}) : super(key: key);

  @override
  _Veget1 createState() => _Veget1();
}

class _Veget1 extends State<Veget1> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.8696024, 128.5819201); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("불난호떡"),
      draggable: true,
      position: LatLng(35.8693495, 128.5801819),
      infoWindow: InfoWindow(
        //popup info
        title: 'Bulnan Pancake',
        snippet: 'Bulnan hotteok',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueGreen), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("전주옥"),
      draggable: true,
      position: LatLng(35.8701876, 128.5820694),
      infoWindow: InfoWindow(
        //popup info
        title: 'Jeonjuok Restaurant',
        snippet: 'Jeonjuok',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("대신속풀이"),
      draggable: true,
      position: LatLng(35.870814, 128.5814982),
      infoWindow: InfoWindow(
        //popup info
        title: 'Daesin Soup',
        snippet: 'Daesin sokpuri',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("이삭"),
      draggable: true,
      position: LatLng(35.8703357, 128.5820085),
      infoWindow: InfoWindow(
        //popup info
        title: 'Isak Sandwich',
        snippet: 'Isak',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("앗싸김밥"),
      draggable: true,
      position: LatLng(35.8705947, 128.5783893),
      infoWindow: InfoWindow(
        //popup info
        title: 'Asssa Restaurant',
        snippet: 'Asssa gimbap',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("소문난팥빙수단팥죽"),
      draggable: true,
      position: LatLng(35.8680511, 128.579332),
      infoWindow: InfoWindow(
        //popup info
        title: 'Somunnan Shaved ice & Red bean porridge',
        snippet: 'Somunnan patbingsu & danpatjuk',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("에덴김밥"),
      draggable: true,
      position: LatLng(35.8680542, 128.5783092),
      infoWindow: InfoWindow(
        //popup info
        title: 'Eden Restaurant',
        snippet: 'Eden gimbap',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Seomun Market Vegetarian'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 16.0,
          ),
        ),
      ),
    );
  }
}
