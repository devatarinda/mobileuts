//import 'dart:html';

import 'package:flutter/material.dart';
import 'hasil.dart';
import 'about_me.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Home(),
      '/Haldua': (BuildContext context) => new MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int panjang = 0;
  int lebar = 0;

  // ignore: unused_field
  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Perhitungan Bangun Datar'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Panjang ",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Masukan Panjang'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Lebar ",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            //filled: true,
                            hintText: 'Masukan Lebar'),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        // ignore: non_constant_identifier_names
                        builder: (BuildContext) => new HasilPersegi(
                            panjang_persegi: panjang, lebar_persegi: lebar),
                      );
                      Navigator.of(context).push(route);
                    },
                    child: Text(
                      'Hasil',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
