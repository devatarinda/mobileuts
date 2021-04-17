import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HasilPersegi extends StatelessWidget {
  // ignore: non_constant_identifier_names
  HasilPersegi({@required this.panjang_persegi, @required this.lebar_persegi});
  // ignore: non_constant_identifier_names
  final int panjang_persegi;
  // ignore: non_constant_identifier_names
  final int lebar_persegi;
  int thasil;
  String cHasil;
  int hasil;
  int kel;

  @override
  Widget build(BuildContext context) {
    double luas = (panjang_persegi * lebar_persegi * 1.0);
    double keliling = (panjang_persegi + lebar_persegi) * 2.0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.black,
              ),
            ),
            Text(
              'Didapatkan Luas Persegi Panjang ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              ' $luas ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Didapatkan Keliling Persegi Panjang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              ' $keliling ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
