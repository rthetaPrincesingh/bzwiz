import 'package:bzwiz/views/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bzwiz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff555FD2)),
        useMaterial3: true,
      ),
      home: splashScreen(),
    );
  }
}