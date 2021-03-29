import 'package:flutter/material.dart';
import 'package:flutter_application_2/Profil.dart';

class Peminjaman extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Peminjaman'),
          actions: <Widget>[
            IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
          backgroundColor: Colors.orangeAccent,
        ),
        body: Peminjaman3(),
        backgroundColor: Colors.grey[100],
        drawer: Drawer(
          child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Nama Pengguna'),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}

class Peminjaman3 extends StatefulWidget {
  @override
  _Peminjaman2 createState() => _Peminjaman2();
}
class _Peminjaman2 extends State<Peminjaman3> {
  
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
