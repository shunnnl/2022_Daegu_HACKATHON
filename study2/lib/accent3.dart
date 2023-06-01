import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Accent2 extends StatefulWidget {
  const Accent2({Key? key}) : super(key: key);
  @override
  _Accent2 createState() => _Accent2();
}

class _Accent2 extends State<Accent2> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: Text("Say it again :\nMeo-ra-kano"),
          )),
          Card(
              child: ListTile(
            title: Text("Not good :\nPaida"),
          )),
          Card(
              child: ListTile(
            title: Text("Is it right? :\nMaj-da Ani-ya"),
            )),
          Card(
              child: ListTile(
            title: Text("Bye :\nJal Geogeo-rei"),
          )),
          Card(
              child: ListTile(
            title: Text("It's so great that I don't needless to say :\nKalkki-eopsda"),
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
