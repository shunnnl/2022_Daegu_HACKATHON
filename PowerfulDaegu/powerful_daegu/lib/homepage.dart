import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';
import 'package:powerful_daegu/market1.dart';
import 'package:powerful_daegu/market2.dart';
import 'package:powerful_daegu/market3.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final name = 'main_title'.tr();
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icon.menu),
        title: Text('main_title'.tr()),
        //actions: [
        //Icon(Icon.search),
        //],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          /*child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "입력창"),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Choose"),
              )
            ],
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('market_1');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Market1()),
                  );
                  //Navigator.pop(context);
                },
                child: Text('market_1'.tr()),
              ),
              ElevatedButton(
                onPressed: () {
                  print('market_2');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Market2()),
                  );
                },
                child: Text('market_2'.tr()),
              ),
              ElevatedButton(
                onPressed: () {
                  print('market_3');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Market3()),
                  );
                },
                child: Text('market_3'.tr()),
              ),
              //_MyButton(),
            ],
          )),
    );
  }
}

class _MyButton extends StatefulWidget {
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<_MyButton> {
  bool _active = false;

  _setActive() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('onTap');
        _setActive();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _active ? Colors.red : Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        width: 300,
        height: 80,
        alignment: Alignment.center,
        child: Icon(Icons.add),
      ),
    );
  }
}
