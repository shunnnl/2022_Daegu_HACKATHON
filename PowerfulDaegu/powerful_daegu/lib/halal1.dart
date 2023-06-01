import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/accent1.dart';
import 'package:powerful_daegu/marketfood1.dart';
import 'package:powerful_daegu/third1.dart';
import 'package:powerful_daegu/main.dart';

class Halal1 extends StatefulWidget {
  const Halal1({Key? key}) : super(key: key);

  @override
  _Halal1 createState() => _Halal1();
}

class _Halal1 extends State<Halal1> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.869394, 128.580801); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("성주식당"),
      draggable: true,
      position: LatLng(35.8696024, 128.5819201),
      infoWindow: InfoWindow(
        //popup info
        title: 'Seongju Restaurant',
        snippet: 'Seongju sikdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("미리내식당"),
      draggable: true,
      position: LatLng(35.8701007, 128.5815749),
      infoWindow: InfoWindow(
        //popup info
        title: 'Mirinae Restaurant',
        snippet: 'Mirinae sikdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("방글이국수"),
      draggable: true,
      position: LatLng(35.8695545, 128.5801274),
      infoWindow: InfoWindow(
        //popup info
        title: 'Banggeuri Noodles',
        snippet: 'Banggeuri guksu',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("하나식당"),
      draggable: true,
      position: LatLng(35.8696132, 128.579949),
      infoWindow: InfoWindow(
        //popup info
        title: 'Hana Restaurant',
        snippet: 'Hana sikdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("한우국밥"),
      draggable: true,
      position: LatLng(35.8680511, 128.579332),
      infoWindow: InfoWindow(
        //popup info
        title: 'Hanu Soup',
        snippet: 'Hanu gukbap',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("삼미식당"),
      draggable: true,
      position: LatLng(35.870019, 128.5806689),
      infoWindow: InfoWindow(
        //popup info
        title: 'Sammi Restaurant',
        snippet: 'Sammi sikdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("부산어묵고래사"),
      draggable: true,
      position: LatLng(35.8698791, 128.5804272),
      infoWindow: InfoWindow(
        //popup info
        title: 'Busan-eomuk Restaurant',
        snippet: 'Busan-eomuk goraesa',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Seomun Market Halal'),
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
