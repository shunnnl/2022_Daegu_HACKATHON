import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/accent2.dart';
import 'package:study2/first.dart';
import 'package:study2/map2.dart';
import 'package:study2/marketfood2.dart';
import 'package:study2/third2.dart';
import 'package:study2/main.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Market2 extends StatefulWidget {
  const Market2({Key? key}) : super(key: key);
  @override
  _Market2 createState() => _Market2();
}

class _Market2 extends State<Market2> {
  //late GoogleMapController mapController;

  //final LatLng _center = const LatLng(35.8761838, 128.6052677); //칠성시장

  //void _onMapCreated(GoogleMapController controller) {
  //  mapController = controller;
  //}

  int _selectedIndex = 0;
  List _pages = [Map2(), Marketfood2(), Third2(), Accent2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('Market2'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),

      /*body: Center(
        //child: Text('Market 2 Page'),
        child: _pages[_selectedIndex], // 페이지와 연결
      ),*/
=======
        title: Text('market_2'.tr()),
      ),

      body: Center(
        //child: Text('Market 2 Page'),
        child: _pages[_selectedIndex], // 페이지와 연결
      ),

>>>>>>> b80df9fbe1d06d5ee0d29564ae76a7404898c5bc
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'index_0'.tr(),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'index_1'.tr(),
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'index_2'.tr(),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: 'index_3'.tr(),
            icon: Icon(Icons.library_books),
            //onTap: () {
            //print('Accent');
            //Navigator.push(
            //context,
            //MaterialPageRoute(builder: (context) => const Accent()),
            //);
            //Navigator.pop(context);
            //},
          ),
        ],
      ),
      //body: Center(
      // child: Text('Market 2 Page'),
      //)
    );
  }

  void _onItemTapped(int index) {
    // state 갱신
    setState(() {
      _selectedIndex = index; // index는 item 순서로 0, 1, 2로 구성
    });
  }
}
