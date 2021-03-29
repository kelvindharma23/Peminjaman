import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pembayaran.dart';

class Pendanaan2 extends StatelessWidget{
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
        body: Pendanaan(),
        backgroundColor: Colors.grey[100],
        drawer: Drawer(
          child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
class Pendanaan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Card(
            color: Colors.green,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                      'PINJAMAN UNTUK MEMBUAT SEKOLAH TERKUMPUL 100% DARI 253 LENDER',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Divider(
                  color: Colors.white,
                  height: 20,
                  thickness: 10,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  title: Text('JUMLAH PINJAMAN                       TENOR',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text(
                      'Rp. 2.000.000.000                          2 BULAN',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text('BUNGA PINJAMAN                       AGUNAN',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text(
                      '13.5%                                               ADA',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  buttonPadding: EdgeInsets.all(10),
                  children: [
                    FlatButton(
                      color: Colors.white,
                      child: const Text(
                        'PEMBERIAN DANA',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Via()),
                        );
                      },
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                  thickness: 10,
                ),
                ListTile(
                  title: Text(
                      'PINJAMAN UNTUK MEMBUAT RUMAH TERKUMPUL 100% DARI 253 LENDER',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Divider(
                  color: Colors.white,
                  height: 20,
                  thickness: 10,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  title: Text('JUMLAH PINJAMAN                       TENOR',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text(
                      'Rp. 224.000.000                          2 BULAN',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text('BUNGA PINJAMAN                       AGUNAN',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ListTile(
                  title: Text(
                      '13.5%                                               ADA',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  buttonPadding: EdgeInsets.all(10),
                  children: [
                    FlatButton(
                      color: Colors.white,
                      child: const Text(
                        'PEMBERIAN DANA',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Via()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Via extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("PEMBAYARAN VIA"),
      ),
      body: Container(
        child: Card(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.0,
                width: 125.0,
                child: RaisedButton(
                  child: Image(
                    image: AssetImage("assets/Visa.png"),
                  ),
                  color: Colors.white,
                  elevation: 0.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                     Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pembayaran()));
                  },
                ),
              ),
              SizedBox(
                height: 100.0,
                width: 125.0,
                child: RaisedButton(
                  child: Image(
                    image: AssetImage("assets/Master_card.png"),
                  ),
                  color: Colors.white,
                  elevation: 0.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                     Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pembayaran()));
                  },
                ),
              ),
              SizedBox(
                height: 100.0,
                width: 125.0,
                child: RaisedButton(
                  child: Image(
                    image: AssetImage("assets/Pay_pal.jpg"),
                  ),
                  color: Colors.white,
                  elevation: 0.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                     Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pembayaran()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
