import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent.dart';
import 'package:study2/first.dart';
import 'package:study2/second.dart';
import 'package:study2/third.dart';
import 'package:study2/main.dart';

class Marketfood3Halal extends StatefulWidget {
  const Marketfood3Halal({Key? key}) : super(key: key);

  @override
  _Marketfood3Halal createState() => _Marketfood3Halal();
}

class _Marketfood3Halal extends State<Marketfood3Halal> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.835960, 128.558076); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("짜리몽땅김밥"),
      draggable: true,
      position: LatLng(35.8357323, 128.5580507),
      infoWindow: InfoWindow(
        //popup info
        title: 'Jjajangmongtang Gimbap',
        snippet: 'Jjalimongttang-gimbab',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("뚱보식당"),
      draggable: true,
      position: LatLng(35.8701007, 128.5815749),
      infoWindow: InfoWindow(
        //popup info
        title: 'Ttung-bo Restaurant',
        snippet: 'Ttung-bo sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("밀밭식당"),
      draggable: true,
      position: LatLng(35.835357, 128.5581289),
      infoWindow: InfoWindow(
        //popup info
        title: 'Milbat Restaurant',
        snippet: 'Milbat sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("마니아치킨"),
      draggable: true,
      position: LatLng(35.8374027, 128.5603094),
      infoWindow: InfoWindow(
        //popup info
        title: 'Mania Chicken',
        snippet: 'Mania Chicken',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("꼬꼬통닭식당"),
      draggable: true,
      position: LatLng(35.8352878, 128.557482),
      infoWindow: InfoWindow(
        //popup info
        title: 'Coco Chicken Restaurant',
        snippet: 'Kkokko tong-dalg sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("대백식당"),
      draggable: true,
      position: LatLng(35.8355885, 128.5571741),
      infoWindow: InfoWindow(
        //popup info
        title: 'Daebaek Restaurant',
        snippet: 'Dae-baeg sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gwanmun Market Halal Food'),
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
