import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syrian_hotelsui/screens/welcome_screen.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Timer( const Duration(seconds: 3),
            ()=> Get.to(const Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
          child: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              height: 138,
              width: 196,
            ),
          ),
        ));
  }
}
