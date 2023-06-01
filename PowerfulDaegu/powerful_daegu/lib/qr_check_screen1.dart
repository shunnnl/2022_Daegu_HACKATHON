import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCheckScreen1 extends StatefulWidget {
  static const String ROUTE_NAME = '/qr_check_screen1';

  final String eventKeyword; //건져올 특정 키워드

  QRCheckScreen1({required this.eventKeyword});

  @override
  State<QRCheckScreen1> createState() => _QRCheckScreenState1();
}

class _QRCheckScreenState1 extends State<QRCheckScreen1> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('QR스캐너'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: this._onQRViewCreated,
                  formatsAllowed: [BarcodeFormat.qrcode],
                  overlay: QrScannerOverlayShape(
                    borderRadius: 10,
                    borderColor: Colors.blue,
                    borderLength: 30,
                    borderWidth: 5,
                    cutOutSize: screenSize.width / 1.4,
                  ),
                ),
              ),
            )
          ],
        ));
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.resumeCamera();

    controller.scannedDataStream.listen((event) {
      print('QRCheckScreen_onQRViewCreated.listen : result=${event.code}');

      if (event.code != null) {
        //스캔된 QR코드에 특정 키워드가 들어있다면
        //QR스캔을 정지하고 이 화면을 닫으면서 QR결과값을 보내주도록한다.
        if (event.code!.contains(widget.eventKeyword)) {
          this.controller!.dispose();
          Navigator.pop(context, event.code);
        }
      }
    });
  }
}
