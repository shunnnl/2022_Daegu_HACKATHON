import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:study1/market1.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icon.menu),
        title: Text("Daegu Market App"),
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
                  print('choosing market 1');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Market1()),
                  );
                  //Navigator.pop(context);
                },
                child: Text('MARKET 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('choosing market 2');
                },
                child: Text('MARKET 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('choosing market 3');
                },
                child: Text('MARKET 3'),
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
