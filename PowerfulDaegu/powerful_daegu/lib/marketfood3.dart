import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/halal3.dart';
import 'package:powerful_daegu/marketfood3.dart';
import 'package:powerful_daegu/main.dart';
import 'package:powerful_daegu/veget3.dart';

class Marketfood3 extends StatefulWidget {
  const Marketfood3({Key? key}) : super(key: key);

  @override
  _Marketfood3 createState() => _Marketfood3();
}

class _Marketfood3 extends State<Marketfood3> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.835960, 128.558076); //128.5807879

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
                    print('veget_3');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Veget3()),
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
                    print('halal_3');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Halal3()),
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
