import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peminjaman'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Peminjaman(),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}

class Peminjaman extends StatefulWidget {
  @override
  _Peminjaman createState() => _Peminjaman();
}

class _Peminjaman extends State<Peminjaman> {
  @override
  bool CheckBox = false;

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerAlasan = new TextEditingController();
  TextEditingController controllerJumlah = new TextEditingController();
  TextEditingController controllerTenor = new TextEditingController();

  void KirimData() {
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text("Nama Lengkap: ${controllerNama.text}"),
            Text("Alasan : ${controllerAlasan.text}"),
            Text("Jumlah pinjaman: ${controllerJumlah.text}"),
            Text("Tenor: ${controllerTenor.text} bulan"),
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                      hintText: 'Nama Peminjam',
                      labelText: 'Nama Peminjam',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  controller: controllerAlasan,
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: 'Alasan Peminjaman',
                      labelText: 'Alasan Peminjaman',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  controller: controllerJumlah,
                  decoration: InputDecoration(
                      hintText: 'Jumlah Pinjaman',
                      labelText: 'Jumlah Pinjaman',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  controller: controllerTenor,
                  decoration: InputDecoration(
                      hintText: 'Tenor',
                      labelText: 'Tenor',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    Checkbox(
                        value: CheckBox,
                        onChanged: (bool value) {
                          print(value);
                          setState(() {
                            CheckBox = value;
                          });
                        }),
                    Flexible(
                      child: Text(
                          'Anda sudah membaca dan menyetujui term dan kondisi dari app ini dengan mengajukan pinjaman ini'),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                new RaisedButton(
                    child: new Text(
                      "AJUKAN PINJAMAN",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      KirimData();
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
