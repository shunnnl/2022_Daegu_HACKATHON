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

  final LatLng _center = const LatLng(35.876655, 128.604625); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("포항집"),
      draggable: true,
      position: LatLng(35.8766575, 128.604722),
      infoWindow: InfoWindow(
        //popup info
        title: 'Pohang House Restaurant',
        snippet: 'Pohang-jib',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueGreen), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("단골식당"),
      draggable: true,
      position: LatLng(35.8761588, 128.603643),
      infoWindow: InfoWindow(
        //popup info
        title: 'Regular Restaurant',
        snippet: 'Dangol sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("가산슈퍼 채소"),
      draggable: true,
      position: LatLng(35.875228, 128.6046425),
      infoWindow: InfoWindow(
        //popup info
        title: 'Gasan Super Vegetables',
        snippet: 'Gasan syu-peo chaeso',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("세영수산"),
      draggable: true,
      position: LatLng(35.8758622, 128.6050604),
      infoWindow: InfoWindow(
        //popup info
        title: 'Seyoung Fisheries',
        snippet: 'Seyeong susan',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("칠성시장 국수집"),
      draggable: true,
      position: LatLng(35.8770418, 128.6043883),
      infoWindow: InfoWindow(
        //popup info
        title: 'Chilseong Market Noodles',
        snippet: 'Chilseongsijang-gugsujib',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("녹원 보리밥"),
      draggable: true,
      position: LatLng(35.8769556, 128.6041107),
      infoWindow: InfoWindow(
        //popup info
        title: 'Nokwon Barley Rice',
        snippet: 'Nog-wonbolibab',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
    _markers.add(Marker(
      markerId: MarkerId("영천 보리밥"),
      draggable: true,
      position: LatLng(35.8767929, 128.6043946),
      infoWindow: InfoWindow(
        //popup info
        title: 'Yeongcheon Barley Rice',
        snippet: 'Yeongcheon bolibab',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chilsung Market Vegetarian Food'),
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
