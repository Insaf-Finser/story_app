import 'dart:async';

import 'package:flutter/material.dart';
import 'package:story_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Questora')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 241, 221, 165),
        child: const Center( child: Text('Questora', style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Colors.white),),),
      ),
    );
  }
}

