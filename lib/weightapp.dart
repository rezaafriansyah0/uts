import 'package:flutter/material.dart';
import 'weightres.dart';
import 'home_screen.dart';

void main() => runApp(Weightapp());

class Weightapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tinggi = 0;
  int berat = 0;
  String valGender;
  List gender = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weight App'),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(9.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Image(image: AssetImage('assets/images/ilus.jpg')),
                Container(
                  child: Text(
                    "Aplikasi ini digunakan untuk menghitung berat ideal anda, semoga anda bisa mencpai berat ideal anda makasih",
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 18),
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        tinggi = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                        labelText: "Tinggi",
                        suffix: Text('CM'),
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        hintText: 'Tinggi'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    onChanged: (txt) {
                      setState(() {
                        berat = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 5,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Berat',
                      labelText: "Berat",
                      suffix: Text('KG'),
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Container(
                  child: DropdownButton<String>(
                    hint: Text('Pilih Gendermu'),
                    value: valGender,
                    items: gender.map((value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        valGender = value;
                      });
                    },
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 40.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Weightres(
                                    tinggi: tinggi,
                                    berat: berat,
                                    gender: valGender,
                                  )));
                    },
                    padding: EdgeInsets.all(4.0),
                    color: Colors.blue[200],
                    textColor: Colors.white,
                    child: Text(
                      'Hitung',
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        icon: Icon(Icons.arrow_back),
        label: Text('Back'),
        backgroundColor: Colors.blue[200],
      ),
    );
  }
}
