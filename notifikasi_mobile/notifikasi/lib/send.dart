import 'package:flutter/material.dart';

class Send extends StatelessWidget {
const Send({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Page"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ini adalah halaman send"),
              ElevatedButton(onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Send()),
                //);
                Navigator.pushNamed(context, "/catch",
                arguments: {'message' : "Ini data dari send"});
              }, 
              child: Text("Kembali ke halaman utama"),)
            ],
          ),
        )
        
        
      
    );
  }
}