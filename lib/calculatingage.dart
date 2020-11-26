import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_uts/calculatingage.dart';

class app1 extends StatefulWidget {
  @override
  _app1State createState() => _app1State();
}

class _app1State extends State<app1> {
  int d, m, y;
  String days1 = "", month1 = "", years1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[200],
        title: Text("Menghitung Umur"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/4389-removebg-preview.png'),
            ),
            Text(
              'Penghitung umur - Setiap hari, pengguna mengisi formulir pendaftaran online untuk berbagai tujuan. Misalnya, Anda akan memasukkan detail Anda secara online untuk membuat akun di situs berbagi foto.',
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: RaisedButton(
                child: Text(
                  "Silahkan Masukkan Tanggal Lahir Anda",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  f1();
                },
              ),
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
