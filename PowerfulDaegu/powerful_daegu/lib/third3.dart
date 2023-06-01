import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart'
    show QRView, QRViewController, QrScannerOverlayShape;
import 'package:powerful_daegu/qr_check_screen3.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:powerful_daegu/apply3.dart';

class Third3 extends StatefulWidget {
  const Third3({Key? key}) : super(key: key);
  @override
  _Third3 createState() => _Third3();
}

class _Third3 extends State<Third3> {
  //String qrResult = '';
  int count = 0;
  bool _isAcceptTermsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () async {
                  const url =
                      " https://www.google.com/maps/place/%EC%A1%B0%EA%B0%80%EB%84%A4+%EC%98%A4%EB%8E%85+%EB%96%A1%EB%B3%B6%EC%9D%B4/data=!3m1!4b1!4m5!3m4!1s0x3565e57a2b2a71a9:0x294043ce0f920e85!8m2!3d35.8364484!4d128.5571727?hl=en";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: new Text("Tteokbokki")),
            ElevatedButton(
                onPressed: () async {
                  const url1 =
                      "https://www.google.com/maps/place/%ED%9E%88%EC%B9%B4%EB%A3%A8%EB%8F%88%EA%B9%8C%EC%8A%A4+8%EC%8B%9C%EB%A7%88%EA%B0%90/data=!3m1!4b1!4m5!3m4!1s0x3565e516c6b6ff5d:0xa4ee55c67655fb42!8m2!3d35.8361364!4d128.5581145?hl=en";
                  if (await canLaunch(url1)) {
                    await launch(url1);
                  } else {
                    throw 'Could not launch $url1';
                  }
                },
                child: new Text("Homemade Pork Cutlet")),
            ElevatedButton(
                onPressed: () async {
                  const url2 =
                      " https://www.google.com/maps/place/%EB%9A%B1%EB%B3%B4%EC%8B%9D%EB%8B%B9/data=!3m1!4b1!4m5!3m4!1s0x3565e4bcb27bf9dd:0xd474de5d9658fa52!8m2!3d35.8354712!4d128.5583732?hl=en";
                  if (await canLaunch(url2)) {
                    await launch(url2);
                  } else {
                    throw 'Could not launch $url2';
                  }
                },
                child: new Text("seafood stew")),
            ElevatedButton(
                onPressed: () async {
                  const url3 =
                      "https://www.google.com/maps/place/%EC%9A%B8%EC%97%84%EB%A7%88%EC%86%90%EB%A9%94%EB%B0%80%EB%AC%B5/data=!3m1!4b1!4m5!3m4!1s0x3565e55f5900062b:0xc097af1cb2fcdb5c!8m2!3d35.8344464!4d128.5570167?hl=en";
                  if (await canLaunch(url3)) {
                    await launch(url3);
                  } else {
                    throw 'Could not launch $url3';
                  }
                },
                child: new Text("Buckwheat jelly")),
            ElevatedButton(
                onPressed: () async {
                  const url4 =
                      " https://www.google.com/maps/place/%EB%95%85%EC%A7%91%EC%B9%BC%EA%B5%AD%EC%88%98/data=!3m1!4b1!4m5!3m4!1s0x3565e5a7e4b0f599:0x55fe71705c25e2f6!8m2!3d35.8356711!4d128.5571904?hl=en";
                  if (await canLaunch(url4)) {
                    await launch(url4);
                  } else {
                    throw 'Could not launch $url4';
                  }
                },
                child: new Text("Kalguksu")),
            ElevatedButton(
                onPressed: () async {
                  const url5 =
                      "https://www.google.com/maps/place/%EB%AA%85%EB%B3%B4%EB%96%A1%EC%A7%91/data=!3m1!4b1!4m5!3m4!1s0x3565e4bb6137e243:0x75f1578111e976f5!8m2!3d35.8351045!4d128.5569892?hl=en";
                  if (await canLaunch(url5)) {
                    await launch(url5);
                  } else {
                    throw 'Could not launch $url5';
                  }
                },
                child: new Text("rice cake shop")),
            ElevatedButton(
              // 3
              onPressed: _isAcceptTermsAndConditions
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Apply3()),
                      );
                    }
                  : null,
              child: Text('Apply'),
            ),
            Text('Stamp Count : $count'),
            /*
            Text(
              qrResult,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressedFAB,
        tooltip: 'Increment',
        child: Icon(Icons.qr_code_outlined),
      ), //
    );
  }

  void _onPressedFAB() async {
    dynamic result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return QRCheckScreen3(eventKeyword: 'naver');
    }));

    if (result != null) {
      setState(() {
        //qr스캐너에서 받은 결과값을 화면의 qrResult 에 적용하도록 한다.
        //qrResult = result.toString();
        count++;
        if (count == 6) _isAcceptTermsAndConditions = true;
      });
    }
  }
}
