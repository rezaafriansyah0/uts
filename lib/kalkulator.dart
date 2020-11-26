import 'package:flutter/material.dart';
import 'home_screen.dart';

class kalkulator extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<kalkulator> {
  int hasil = 0;

  TextEditingController angka1 = new TextEditingController();
  TextEditingController angka2 = new TextEditingController();

  tambah() {
    setState(() {
      hasil = int.parse(angka1.text) + int.parse(angka2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new ListView(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/rudi.png'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Di matematika, Mesin hitung (menurut KBBI) atau kalkulator adalah alat untuk menghitung dari perhitungan sederhana seperti penjumlahan, pengurangan, perkalian dan pembagian sampai kepada kalkulator sains yang dapat menghitung rumus matematika tertentu.',
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new TextField(
              controller: angka1,
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(labelText: "Masukkan Angka Pertama"),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new TextField(
              controller: angka2,
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(labelText: "Masukkan Angka Kedua"),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new FlatButton(
              onPressed: () {
                tambah();
              },
              color: Colors.orange,
              child:
                  new Text("Tambah", style: new TextStyle(color: Colors.white)),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Center(
            child: new Text(
              hasil.toString(),
              style: new TextStyle(fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
