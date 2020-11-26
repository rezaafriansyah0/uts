import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_uts/kalkulator.dart';
import 'package:project_uts/square.dart';
import 'package:project_uts/kiteapp.dart';
import 'package:project_uts/main.dart';
import 'package:intl/intl.dart';
import 'package:project_uts/calculatingage.dart';
import 'weightapp.dart';
import 'square.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenstate createState() => _HomeScreenstate();
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Kelompok 3',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
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
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/4851-calculating.json',
                                    height: 100, width: 100),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => app1()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Reza Afriansyah',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2018.1.00744")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/3082-calculator.json',
                                    height: 100, width: 100),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => kiteapp()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Ragil Aggung S',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2018.1.00723")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset(
                                    'assets/4130-fitness-loading-spinner.json',
                                    height: 100,
                                    width: 100),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Weightapp()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Joshua Nathaniel',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2018.1.00703")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/39139-duplicate.json',
                                    height: 100, width: 100),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => square()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Yusup Maulana',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2018.1.00724")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset('assets/39420-calculator.json',
                                    height: 100, width: 100),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                kalkulator()));
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Muchtarrudin',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2018.1.00678")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: <Widget>[
                                Lottie.asset(
                                    'assets/39612-location-animation.json',
                                    height: 100,
                                    width: 100),
                                TextButton(
                                  onPressed: null,
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Wahyu Eka',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.blue[200]),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("13.2019.1.90129")
                                    ],
                                  ),
                                )
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
