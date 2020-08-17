import 'package:flutter/material.dart';
import 'package:staycation/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      // home: DetailPage(),
      home: BookingPage(),
    );
  }
}
