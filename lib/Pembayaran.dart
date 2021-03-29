import 'package:flutter/material.dart';
import 'package:flutter_application_2/Profil.dart';

class Pembayaran extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pembayaran'),
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
        body: Pembayaran3(),
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

class Pembayaran3 extends StatefulWidget {
  @override
  _Pembayaran2 createState() => _Pembayaran2();
}
class _Pembayaran2 extends State<Pembayaran3> {
  
  bool CheckBox = false;

TextEditingController controllerNama = new TextEditingController();
TextEditingController controllerJumlah = new TextEditingController();
TextEditingController controllerTenor = new TextEditingController();

void KirimData() {
  AlertDialog alertDialog = new AlertDialog(
    content: Container(
      height: 200.0,
      child: Column(
        children: <Widget>[
          Text("Nomor Rekening: ${controllerNama.text}"),
          Text("Tanggal Lahir: ${controllerTenor.text} bulan"),
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
                      hintText: 'Nomor Rekening',
                      labelText: 'Nomor Rekening',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  controller: controllerJumlah,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  controller: controllerTenor,
                  decoration: InputDecoration(
                      hintText: 'Tanggal Lahir',
                      labelText: 'Tanggal Lahir',
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
                          'Anda sudah membaca dan menyetujui term dan kondisi dari app ini dengan melakukan pembayaran ini'),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                new RaisedButton(
                    child: new Text(
                      "AJUKAN PEMBAYARAN",
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
