import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart'
    show QRView, QRViewController, QrScannerOverlayShape;
import 'package:powerful_daegu/qr_check_screen1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:powerful_daegu/apply1.dart';

class Third1 extends StatefulWidget {
  const Third1({Key? key}) : super(key: key);
  @override
  _Third1 createState() => _Third1();
}

class _Third1 extends State<Third1> {
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
                      "https://www.google.com/maps/place/Hamjibag/data=!3m1!4b1!4m5!3m4!1s0x3565e3ed0cf136c5:0x6607b18bab484c0d!8m2!3d35.8700783!4d128.5809945?hl=en";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: new Text("pork cutlet")),
            ElevatedButton(
                onPressed: () async {
                  const url1 =
                      "https://www.google.com/maps/place/%EB%82%A8%EC%96%91%EA%B0%88%EB%B9%84%EC%B0%9C/data=!3m1!4b1!4m5!3m4!1s0x3565e3ed72dca23f:0x2816a58fc2129e84!8m2!3d35.8700748!4d128.5807896?hl=en";
                  if (await canLaunch(url1)) {
                    await launch(url1);
                  } else {
                    throw 'Could not launch $url1';
                  }
                },
                child: new Text("Galbijjim")),
            ElevatedButton(
                onPressed: () async {
                  const url2 =
                      "https://www.google.com/maps/place/%EC%96%BC%ED%81%B0%EC%9D%B4%EC%B9%BC%EA%B5%AD%EC%88%98/data=!3m1!4b1!4m5!3m4!1s0x3565e3f2aad56a2d:0x17b9bb51650b2987!8m2!3d35.8687565!4d128.5793804?hl=en";
                  if (await canLaunch(url2)) {
                    await launch(url2);
                  } else {
                    throw 'Could not launch $url2';
                  }
                },
                child: new Text("Kalguksu")),
            ElevatedButton(
                onPressed: () async {
                  const url3 =
                      "https://www.google.com/maps/place/%EC%94%A8%EC%95%97%ED%98%B8%EB%96%A1/data=!3m1!4b1!4m5!3m4!1s0x3565e3fa4eb9dd6b:0x8a5144a45de9f710!8m2!3d35.869076!4d128.5811616?hl=en";
                  if (await canLaunch(url3)) {
                    await launch(url3);
                  } else {
                    throw 'Could not launch $url3';
                  }
                },
                child: new Text("Hotteok")),
            ElevatedButton(
                onPressed: () async {
                  const url4 =
                      "https://www.google.com/maps/place/%EC%84%9C%EB%AC%B8%EC%8B%9C%EC%9E%A52%EC%A7%80%EA%B5%AC/data=!3m1!4b1!4m5!3m4!1s0x3565e3ed547a26cb:0x46eadb68ce2744f3!8m2!3d35.8687506!4d128.5798471?hl=en";
                  if (await canLaunch(url4)) {
                    await launch(url4);
                  } else {
                    throw 'Could not launch $url4';
                  }
                },
                child: new Text("underground shopping mall")),
            ElevatedButton(
                onPressed: () async {
                  const url5 =
                      " https://www.google.com/maps/place/%EC%84%9C%EB%AC%B8%EC%8B%9C%EC%9E%A5+%EC%95%BC%EC%8B%9C%EC%9E%A5/data=!3m1!4b1!4m5!3m4!1s0x3565e376c08aad43:0xdd7958b01f8ee3e!8m2!3d35.8685536!4d128.5802611?hl=en";
                  if (await canLaunch(url5)) {
                    await launch(url5);
                  } else {
                    throw 'Could not launch $url5';
                  }
                },
                child: new Text("night market")),
            ElevatedButton(
              // 3
              onPressed: _isAcceptTermsAndConditions
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Apply1()),
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onPressedFAB() async {
    dynamic result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return QRCheckScreen1(eventKeyword: 'naver');
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
