import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'BUGÜN NE YESEM?',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: YemekSayfasi()),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int yemek = 1;

  int corba = 1;

  int tatli = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tabuksuyu',
    'Düğün Çorbası',
    'Yoğurt Çorbası'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void YemekleriYenileRandom() {
    setState(() {
      corba = Random().nextInt(5) + 1;
      yemek = Random().nextInt(5) + 1;
      tatli = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    onPressed: YemekleriYenileRandom,
                    child: Image.asset('assets/images/corba_$corba.jpg'))),
          ),
          Text(
            '${corbaAdlari[corba - 1]}',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
            width: 200,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                    child: FlatButton(
                        onPressed: YemekleriYenileRandom,
                        highlightColor: Colors.white,
                        splashColor: Colors.white,
                        child: Image.asset('assets/images/yemek_$yemek.jpg')))),
          ),
          Text(
            '${yemekAdlari[yemek - 1]}',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
            width: 200,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                  child: FlatButton(
                      onPressed: YemekleriYenileRandom,
                      highlightColor: Colors.blue,
                      splashColor: Colors.white,
                      child: Image.asset('assets/images/tatli_$tatli.jpg'))),
            ),
          ),
          Text(
            '${tatliAdlari[tatli - 1]}',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
            width: 200,
          )
        ],
      ),
    );
  }
}
