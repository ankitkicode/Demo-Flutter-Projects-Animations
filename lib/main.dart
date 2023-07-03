// ignore_for_file: prefer_const_constructors, unused_import

import 'package:demo/animation/lottieaniamtion.dart';
import 'package:demo/animation/rive.dart';
import 'package:demo/home.dart';
import 'package:flutter/material.dart';

import 'animation/animationcontainer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:ContainerAnime(),
    );
  }
}


