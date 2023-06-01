import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/accent2.dart';
import 'package:powerful_daegu/halal2.dart';
import 'package:powerful_daegu/marketfood2.dart';
import 'package:powerful_daegu/main.dart';
import 'package:powerful_daegu/veget2.dart';

class Marketfood2 extends StatefulWidget {
  const Marketfood2({Key? key}) : super(key: key);

  @override
  _Marketfood2 createState() => _Marketfood2();
}

class _Marketfood2 extends State<Marketfood2> {
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
  /*void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
      print("dddd" + _currentMapType.toString());
    });
  }

  void _onAddMarkerButtonPressed() {
    InfoWindow infoWindow =
        InfoWindow(title: "Location" + markers.length.toString());
    Marker marker = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: infoWindow,
      position: centerPosition,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );
    setState(() {
      markers.add(marker);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('market_1'.tr()),
          backgroundColor: Colors.green[700],
        ),*/
        /*body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 30.0,
          ),
        ),*/
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              markers: Set.from(_markers),
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: new ElevatedButton(
                  //onPressed: _onMapTypeButtonPressed,
                  onPressed: () {
                    print('veget_2');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Veget2()),
                    );
                  },
                  child: new Text('VEGETERIAN'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: new ElevatedButton(
                  //onPressed: _onAddMarkerButtonPressed,
                  onPressed: () {
                    print('halal_2');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Halal2()),
                    );
                  },
                  child: new Text('HALAL'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
