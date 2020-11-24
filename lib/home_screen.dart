import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_uts/main.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenstate createState() => _HomeScreenstate();
}

class app1 extends StatefulWidget {
  @override
  _app1State createState() => _app1State();
}

class _HomeScreenstate extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/Header.png'))),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://icon-library.com/images/usergroup-icon/usergroup-icon-19.jpg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Kelompok 3',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.white),
                            ),
                            Text(
                              'Topik Khusus',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                          Card(
                            color: Colors.cyanAccent,
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '_app1State');
                                    },
                                    child: Text(
                                      'Age Calculating',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: null,
                                    child: Text(
                                      'Test',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: null,
                                    child: Text(
                                      'Test',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: null,
                                    child: Text(
                                      'Test',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: null,
                                    child: Text(
                                      'Test',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 200),
                                TextButton(
                                    onPressed: null,
                                    child: Text(
                                      'Test',
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                        ],
                        crossAxisCount: 2),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _app1State extends State<app1> {
  int d, m, y;
  String days1 = "", month1 = "", years1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menghitung Umur"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Silahkan Masukkan Tanggal Lahir Anda",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                f1();
              },
            ),
            Text(
              years1 + " " + month1 + " " + days1,
              style: TextStyle(fontSize: 28.0),
            )
          ],
        ),
      ),
    );
  }

  Future f1() async {
    DateTime date1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    setState(() {
      d = int.parse(DateFormat("dd").format(date1));
      m = int.parse(DateFormat("MM").format(date1));
      y = int.parse(DateFormat("yy").format(date1));

      int d1 = int.parse(DateFormat("dd").format(DateTime.now()));
      int m1 = int.parse(DateFormat("mm").format(DateTime.now()));
      int y1 = int.parse(DateFormat("yy").format(DateTime.now()));
      int day = finddays(m1, y1);

      if (d1 - d >= 0)
        days1 = (d1 - d).toString() + " Hari";
      else {
        days1 = (d1 + day - d).toString() + "Hari";
        m1 = m1 - 1;
      }
      if (m1 - m >= 0)
        month1 = (m1 - m).toString() + " Bulan";
      else {
        month1 = (m1 + 12 - m).toString() + " Bulan";
        y1 = y1 - 1;
      }
      years1 = (y1 - y).toString() + " Tahun";
    });
  }

  int finddays(int m2, int y2) {
    int day2;
    if (m2 == 1 || m2 == 3 || m2 == 5 || m2 == 7 || m2 == 10 || m2 == 12)
      day2 = 31;
    else if (m2 == 4 || m2 == 6 || m2 == 9 || m2 == 11)
      day2 = 30;
    else {
      if (y2 % 4 == 0)
        day2 = 29;
      else
        day2 = 28;
    }
    return day2;
  }
}
