import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/accent1.dart';
import 'package:powerful_daegu/map1.dart';
import 'package:powerful_daegu/marketfood1.dart';
import 'package:powerful_daegu/third1.dart';
import 'package:powerful_daegu/main.dart';

//import 'package:google_maps_flutter/google_maps_flutter.dart';
class Market1 extends StatefulWidget {
  const Market1({Key? key}) : super(key: key);
  @override
  _Market1 createState() => _Market1();
}

class _Market1 extends State<Market1> {
  //late GoogleMapController mapController;
  //final LatLng _center = const LatLng(35.8761838, 128.6052677); //칠성시장
  //void _onMapCreated(GoogleMapController controller) {
  //  mapController = controller;
  //}
  int _selectedIndex = 0;
  List _pages = [Map1(), Marketfood1(), Third1(), Accent1()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('market_1'.tr()),
      ),

      body: Center(
        //child: Text('Market 2 Page'),
        child: _pages[_selectedIndex], // 페이지와 연결
      ),
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
