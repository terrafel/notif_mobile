import 'package:flutter/material.dart';
import 'package:notifikasi/main.dart';

class Catch extends StatelessWidget {
  const Catch({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("Catch Data Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ini adalah halaman penerima data"),
            Text("Ini adalah data yang dikirim: {$data['message]}"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Catch()),
                );
              },
              child: Text("kembali ke halaman utama"),
            ),
          ],
        ),
      ),
    );
  }
}
