import 'package:flutter/material.dart';
import 'kiteresult.dart';
import 'home_screen.dart';

void main() => runApp(kiteapp());

class kiteapp extends StatelessWidget {
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
  int diagonal1 = 0;
  int diagonal2 = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.home_filled),
        title: new Text('Mesin Hitung'),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/calc.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Mesin hitung ini merupakan alat untuk menghitung luas layang-layang yang memiliki rumus: d1 * d2 * 1/2',
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            diagonal1 = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        decoration: InputDecoration(
                            labelText: "Panjang Diagonal 1",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            hintText: 'D1'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            diagonal2 = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        decoration: InputDecoration(
                          hintText: 'D2',
                          labelText: "Panjang Diagonal 2",
                          suffix: Text('cm'),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kiteResult(
                                    panjang_diagonal1: diagonal1,
                                    panjang_diagonal2: diagonal2,
                                  )));
                    },
                    padding: EdgeInsets.all(12.0),
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
