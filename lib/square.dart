import 'package:flutter/material.dart';
import 'home_screen.dart';

class square extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<square> {
  double rusuk = 0;
  String hasil2 = "";
  double hasil;
  var rusukController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Luas Persegi",
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Image.asset(
              "assets/images/square.png",
              width: 150,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            width: 390,
            child: Text(
              "Persegi Adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk (r) yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi memiliki rumus luas rusuk x rusuk ( r x r )",
              style: TextStyle(color: Colors.blue[300]),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                alignment: Alignment.topLeft,
                child: TextField(
                  controller: rusukController,
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book),
                    labelText: "Rusuk",
                    suffix: Text('cm'),
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                width: 200,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        hasil = double.parse(rusukController.text) *
                            double.parse(rusukController.text);
                        hasil2 = hasil.toString();
                        return hasil2;
                      });
                    },
                    child: Text(
                      'Hitung',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text("Hasil Luas yang dihitung :"),
                Text(hasil2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
