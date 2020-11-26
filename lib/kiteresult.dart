import 'package:flutter/material.dart';
import 'dart:math';

class kiteResult extends StatelessWidget {
  kiteResult(
      {@required this.panjang_diagonal1, @required this.panjang_diagonal2});
  final int panjang_diagonal1;
  final int panjang_diagonal2;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_diagonal1 * panjang_diagonal2 * 0.5);

    return Scaffold(
      appBar: new AppBar(
        title: new Text('Hasil'),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(height: 10, child: Container(
            //   color: Colors.blue,
            // ),
            // ),

            // SizedBox(height: 20, child: Container(color: Colors.red,
            // ),
            // ),

            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Luas Layang-layang adalah: \n $hasil',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[850],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Text(
            //   '$hasil',
            //   style: TextStyle(
            //     fontSize: 15,
            //     fontWeight: FontWeight.w800,
            //     color: Colors.grey[600],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
