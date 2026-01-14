import 'package:flutter/material.dart';
import 'package:notifikasi/notifikasi.dart';
import 'package:notifikasi/catch.dart';
import 'package:notifikasi/send.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dibawah ini adalah tombol interaktif"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Notifikasi');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Notifikasi()),
                //);
              },
              child: Text("Akses ke halaman notifikasi"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Send');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Notifikasi()),
                //);
              },
              child: Text("Akses ke halaman send"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Catch');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Notifikasi()),
                //);
              },
              child: Text("Akses ke halaman catch"),
            ),
          ],
        ),
      ),
    );
  }
}
