import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart'
    show QRView, QRViewController, QrScannerOverlayShape;
import 'package:study2/qr_check_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class Third2 extends StatefulWidget {
  const Third2({Key? key}) : super(key: key);
  @override
  _Third2 createState() => _Third2();
}

class _Third2 extends State<Third2> {
  String qrResult = '';

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
                      "https://www.google.co.kr/maps/place/%EC%84%B1%EC%A3%BC%EC%99%95%EC%A1%B1%EB%B0%9C/data=!3m1!4b1!4m5!3m4!1s0x3565e3d6f74c55bb:0xdf92c325dd5308b4!8m2!3d35.8762002!4d128.6036211?hl=en&authuser=0";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: new Text("pig hocks")),
            ElevatedButton(
                onPressed: () async {
                  const url1 =
                      "https://www.google.co.kr/maps/place/Dangol+Sikdang/data=!3m1!4b1!4m5!3m4!1s0x3565e3d6585f493b:0xb4a66240b808f6e6!8m2!3d35.8761588!4d128.603643?hl=en&authuser=0";
                  if (await canLaunch(url1)) {
                    await launch(url1);
                  } else {
                    throw 'Could not launch $url1';
                  }
                },
                child: new Text("barbequed beef")),
            ElevatedButton(
                onPressed: () async {
                  const url2 =
                      "https://www.google.co.kr/maps/place/%ED%99%94%EC%9B%90%EA%B3%B0%ED%83%95/data=!4m9!1m2!2m1!1z7ZmU7JuQ7Iud64u5!3m5!1s0x3565e3d7aada1685:0x52db61e64c6f868c!8m2!3d35.8761959!4d128.6034128!15sCgztmZTsm5Dsi53ri7laDyIN7ZmU7JuQIOyLneuLuZIBEWtvcmVhbl9yZXN0YXVyYW504AEA?hl=en&authuser=0";
                  if (await canLaunch(url2)) {
                    await launch(url2);
                  } else {
                    throw 'Could not launch $url2';
                  }
                },
                child: new Text("beef soup")),
            ElevatedButton(
                onPressed: () async {
                  const url3 =
                      "https://www.google.co.kr/maps/place/Angel-in-us+Coffee+in+Daegu+chilseong+market+station/data=!4m9!1m2!2m1!1z7JeU7KCk66as64SI7IqkIOy5oOyEsQ!3m5!1s0x3565e17e1d74803d:0xe18d99ef39b2710e!8m2!3d35.8771072!4d128.6065793!15sChbsl5TsoKTrpqzrhIjsiqQg7Lmg7ISxIgOIAQFaGiIY7JeU7KCkIOumrCDrhIjsiqQg7Lmg7ISxkgELY29mZmVlX3Nob3CaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTmhNbkJYYVZWUkVBReABAA?hl=en&authuser=0";
                  if (await canLaunch(url3)) {
                    await launch(url3);
                  } else {
                    throw 'Could not launch $url3';
                  }
                },
                child: new Text("cafe")),
            ElevatedButton(
                onPressed: () async {
                  const url4 =
                      "https://www.google.co.kr/maps/place/%EC%B9%A0%EC%84%B1%ED%95%9C%EC%9D%98%EC%9B%90/data=!4m9!1m2!2m1!1z7Lmg7ISx7ZWc7J2Y7JuQ!3m5!1s0x3565e3d5e5ee7239:0x3b0651d79dcec72d!8m2!3d35.8764909!4d128.6047497!15sCg_suaDshLHtlZzsnZjsm5CSARdvcmllbnRhbF9tZWRpY2FsX2NsaW5pY-ABAA?hl=en&authuser=0";
                  if (await canLaunch(url4)) {
                    await launch(url4);
                  } else {
                    throw 'Could not launch $url4';
                  }
                },
                child: new Text("Oriental medicine clinic")),
            ElevatedButton(
                onPressed: () async {
                  const url5 =
                      "https://www.google.co.kr/maps/place/%EA%B0%80%ED%8C%8C%EB%8F%84%EC%88%98%EC%82%B0/data=!3m1!4b1!4m5!3m4!1s0x3565e3d68b0886b7:0x5eca4ea7939b193e!8m2!3d35.8754945!4d128.6043422?hl=en&authuser=0";
                  if (await canLaunch(url5)) {
                    await launch(url5);
                  } else {
                    throw 'Could not launch $url5';
                  }
                },
                child: new Text("seafood market")),
            Text(
              qrResult,
              style: Theme.of(context).textTheme.bodyText2,
            ),
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
      return QRCheckScreen(eventKeyword: 'userId');
    }));

    if (result != null) {
      setState(() {
        //qr스캐너에서 받은 결과값을 화면의 qrResult 에 적용하도록 한다.
        qrResult = result.toString();
      });
    }
  }
}
