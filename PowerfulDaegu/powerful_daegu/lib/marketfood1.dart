import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/accent1.dart';
import 'package:powerful_daegu/halal1.dart';
import 'package:powerful_daegu/marketfood1.dart';
import 'package:powerful_daegu/third1.dart';
import 'package:powerful_daegu/main.dart';
import 'package:powerful_daegu/veget1.dart';

class Marketfood1 extends StatefulWidget {
  const Marketfood1({Key? key}) : super(key: key);

  @override
  _Marketfood1 createState() => _Marketfood1();
}

class _Marketfood1 extends State<Marketfood1> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.8688497, 128.5807879); //128.5807879

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
                    print('veget_1');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Veget1()),
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
                    print('halal_1');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Halal1()),
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
