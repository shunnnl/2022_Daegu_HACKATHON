import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart'
    show QRView, QRViewController, QrScannerOverlayShape;
import 'package:powerful_daegu/qr_check_screen2.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:powerful_daegu/apply2.dart';

class Third2 extends StatefulWidget {
  const Third2({Key? key}) : super(key: key);
  @override
  _Third2 createState() => _Third2();
}

class _Third2 extends State<Third2> {
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
                      "https://www.google.com/maps/place/%EB%98%A5%EC%A7%91%EB%8C%80%ED%86%B5%EB%A0%B9+%ED%8F%89%ED%99%94%EC%8B%9C%EC%9E%A5%EB%B3%B8%EC%A0%90/data=!3m1!4b1!4m5!3m4!1s0x3565e19b204b5273:0xd703641101152b02!8m2!3d35.8828048!4d128.6187325?hl=en";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: new Text("chicken coop")),
            ElevatedButton(
                onPressed: () async {
                  const url1 =
                      "https://www.google.com/maps/place/%EB%B3%84%EB%B3%84%EC%83%81%EC%83%81+%EC%B9%A0%EC%84%B1%EC%95%BC%EC%8B%9C%EC%9E%A5/data=!3m1!4b1!4m5!3m4!1s0x3565e34f465e3255:0x41ad617bc237835d!8m2!3d35.876835!4d128.6048898?hl=en";
                  if (await canLaunch(url1)) {
                    await launch(url1);
                  } else {
                    throw 'Could not launch $url1';
                  }
                },
                child: new Text("night market")),
            ElevatedButton(
                onPressed: () async {
                  const url2 =
                      "https://www.google.com/maps/place/%EB%B0%B0%ED%95%9C%EC%9D%98%EC%9B%90/data=!3m1!4b1!4m5!3m4!1s0x3565e3d67e068113:0xadc77d76f4d1c2d7!8m2!3d35.8751652!4d128.6054715?hl=en";
                  if (await canLaunch(url2)) {
                    await launch(url2);
                  } else {
                    throw 'Could not launch $url2';
                  }
                },
                child: new Text("Oriental medicine clinic")),
            ElevatedButton(
                onPressed: () async {
                  const url3 =
                      " https://www.google.com/maps/place/%EB%8B%AC%EC%9D%B8%EC%9D%98+%EC%B0%9C%EB%8B%AD+%EC%B9%A0%EC%84%B1%EC%A0%90/data=!3m1!4b1!4m5!3m4!1s0x3565e37856047ead:0x26f4f67b966a7919!8m2!3d35.8793956!4d128.5962374?hl=en";
                  if (await canLaunch(url3)) {
                    await launch(url3);
                  } else {
                    throw 'Could not launch $url3';
                  }
                },
                child: new Text("steamed chicken")),
            ElevatedButton(
                onPressed: () async {
                  const url4 =
                      " https://www.google.com/maps/place/%ED%95%A0%EB%A7%A4%EC%99%95%EC%A1%B1%EB%B0%9C/data=!3m1!4b1!4m5!3m4!1s0x3565e3d6f74c55bb:0x61e97aa46f7d08f7!8m2!3d35.8756854!4d128.6035277?hl=en";
                  if (await canLaunch(url4)) {
                    await launch(url4);
                  } else {
                    throw 'Could not launch $url4';
                  }
                },
                child: new Text("Pork feet")),
            ElevatedButton(
                onPressed: () async {
                  const url5 =
                      "https://www.google.com/maps/place/Miseongdang+Main+Branch/data=!3m1!4b1!4m5!3m4!1s0x3565e392297bf65b:0x950b2141f87ae8ef!8m2!3d35.857397!4d128.5808388?hl=en";
                  if (await canLaunch(url5)) {
                    await launch(url5);
                  } else {
                    throw 'Could not launch $url5';
                  }
                },
                child: new Text("flat dumplings")),
            ElevatedButton(
              // 3
              onPressed: _isAcceptTermsAndConditions
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Apply2()),
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
      return QRCheckScreen2(eventKeyword: 'naver');
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
