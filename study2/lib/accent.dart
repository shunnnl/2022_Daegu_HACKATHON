import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Accent extends StatefulWidget {
  const Accent({Key? key}) : super(key: key);
  @override
  _Accent createState() => _Accent();
}

class _Accent extends State<Accent> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(
      //child: Text('Accent Page'),
      //)
      body: new ListView(
        children: [
          Card(
              child: ListTile(
                  //title: Text("Accent Item 1"),
                  title: Text(
                      "Checking out if the long sentence is correctly writting on."))),
          Card(
            child: ListTile(
              title: Text("I want to buy this :\nE-guh Ju-E-so"),
            ),
          ),
          Card(
              child: ListTile(
            title: Text("List Item 3"),
          )),
          Card(
              child: ListTile(
            title: Text("List Item 4"),
          )),
          Card(
              child: ListTile(
            title: Text("List Item 5"),
          )),
        ],
        shrinkWrap: true,
        /*padding: const EdgeInsets.all(20.0),
          children: List.generate(choices.length, (index) {
            return Center(
              child: ChoiceCard(choice: choices[index], item: choices[index]),
            );
          })*/
      ),
    );
  }
}
