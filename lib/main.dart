import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/controller_binding.dart';
import 'package:my_flutter_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      title: 'Internet Connectivity Check (Using Getx)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
