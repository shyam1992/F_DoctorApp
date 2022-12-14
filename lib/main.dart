import 'package:flutter/material.dart';
import './dashboard.dart';
import 'package:app_2/book_appointment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'WorkSans'),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Dashboard(),
        '/appointment': (context) => const BookAppointment()
      },
    );
  }
}
