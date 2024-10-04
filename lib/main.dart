import 'package:aslabtif_travel/landingpage.dart';
import 'package:aslabtif_travel/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
