import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';


//inisialisasi plugin notifikasi
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

class Notifikasi extends StatelessWidget {
  const Notifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("kembali ke halaman home"),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("kembali(pop)"),
            ),

            ElevatedButton(
              onPressed: () {
                showNotifikasi();
              },
              child: Text("notifikasi"),
            ),
          ],
        ),
      ),
    );
  }
}

// ini gatau gmn
Future<void> showNotifikasi() async {
  const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.max,
    priority: Priority.high,
  );

  const NotificationDetails generalNotificationDetail = NotificationDetails(
    androidDetails,
  );

  //pesan
  await flutterLocalNotificationsPlugin.show(
    0,
    'Halo!',
    'IniNotifikasi dari tombol',
    notifDetails,
  );
}
