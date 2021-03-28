import 'package:flutter/material.dart';
import 'Peminjaman.dart';
import 'Pendanaan.dart';

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
          title: Text('Home'),
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
        body: Home(),
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

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  bool checkBox = false;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                  child: new Container(
                    height: 200,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent
                    ),
                  ),
                ) 
              )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Peminjaman2()));
                  },
                  child: new Container(
                    alignment: Alignment.center, 
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,borderRadius: new BorderRadius.circular(10) 
                    ),child:new Text("Aju Pinjaman",style: new TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ) 
              )
             )
            ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pendanaan2()));
                  },
                  child: new Container(
                   alignment: Alignment.center, 
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,borderRadius: new BorderRadius.circular(10) 
                    ),
                    child:new Text("Pemberian dana",style: new TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ) 
              )
                )],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                  child: new Container(
                    alignment: Alignment.center, 
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,borderRadius: new BorderRadius.circular(10) 
                    ),
                    child:new Text("Total Pinjaman : Rp 1.000.000",style: new TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ) 
              )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                  child: new Container(
                    alignment: Alignment.center, 
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,borderRadius: new BorderRadius.circular(10) 
                    ),
                    child:new Text("Total Pendanaan : Rp 100.000",style: new TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ) 
              )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                  child: new Container(
                    alignment: Alignment.center, 
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.orangeAccent,borderRadius: new BorderRadius.circular(10) 
                    ),
                    child:new Text("Pembayaran",style: new TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ) 
              )
              ],
            )
          ],)
      )
    );
  }
}