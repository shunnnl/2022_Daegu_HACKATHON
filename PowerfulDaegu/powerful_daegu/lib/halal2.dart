import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/marketfood2.dart';
import 'package:powerful_daegu/main.dart';

class Halal2 extends StatefulWidget {
  const Halal2({Key? key}) : super(key: key);

  @override
  _Halal2 createState() => _Halal2();
}

class _Halal2 extends State<Halal2> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.876655, 128.604625); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
      markerId: MarkerId("정화네 하우스"),
      draggable: true,
      position: LatLng(35.8762155, 128.6038172),
      infoWindow: InfoWindow(
        //popup info
        title: 'Jeong-hwa Restaurant',
        snippet: 'Jeong-hwane hauseu',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("칠성식당"),
      draggable: true,
      position: LatLng(35.8751854, 128.6035277),
      infoWindow: InfoWindow(
        //popup info
        title: 'Chilsung Restaurant',
        snippet: 'Chilseong sigdang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("순한우곰탕"),
      draggable: true,
      position: LatLng(35.8759985, 128.6025088),
      infoWindow: InfoWindow(
        //popup info
        title: 'Pure Korean Beef Soup',
        snippet: 'Sunhan-u gomtang',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("일번지야채만두"),
      draggable: true,
      position: LatLng(35.8748122, 128.6045275),
      infoWindow: InfoWindow(
        //popup info
        title: 'Ilbeongji Vegetable Dumplings',
        snippet: 'Ilbeon-ji ya-chae mandu',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("길수제비"),
      draggable: true,
      position: LatLng(35.8759124, 128.6053978),
      infoWindow: InfoWindow(
        //popup info
        title: 'Gilsu swallow',
        snippet: 'Gilsu-jebi',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("갈릭버터새우"),
      draggable: true,
      position: LatLng(35.8761194, 128.6051875),
      infoWindow: InfoWindow(
        //popup info
        title: 'Garlic Butter Shrimp',
        snippet: 'Gallig beoteo saeu',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("365국시마을"),
      draggable: true,
      position: LatLng(35.8758015, 128.6052652),
      infoWindow: InfoWindow(
        //popup info
        title: '365 Guk Village',
        snippet: '365gugsima-eul',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chilsung Market Halal'),
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
