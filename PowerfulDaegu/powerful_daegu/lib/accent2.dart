import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';

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
            title: Text(
                "It's so great that I don't needless to say :\nKalkki-eopsda"),
          )),
          Card(
              child: ListTile(
            title: Text("Please warm it up :\nDepyeojuiso"),
          )),
          Card(
              child: ListTile(
            title: Text("All :\nMaka"),
          )),
          Card(
              child: ListTile(
            title: Text("No, I'm fine :\nEunjiye"),
          )),
          Card(
              child: ListTile(
            title: Text("You're amazing! :\nNi jom sara-issne!"),
          )),
          Card(
              child: ListTile(
            title: Text("What's wrong with you? :\nMandago?"),
          )),
          Card(
              child: ListTile(
            title: Text("What are you going to eat?  :\nMwo mugeullae?"),
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
