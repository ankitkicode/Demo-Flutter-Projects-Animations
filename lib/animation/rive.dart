// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimationTu extends StatefulWidget {
  const RiveAnimationTu({super.key});

  @override
  State<RiveAnimationTu> createState() => _RiveAnimationTuState();
}

class _RiveAnimationTuState extends State<RiveAnimationTu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rive Animation"),
        backgroundColor: Color.fromARGB(255, 11, 167, 91), ),
        body: Stack( 
          children: [
           RiveAnimation.network("https://public.rive.app/community/runtime-files/3541-7421-animated-chatbot.riv")
          ],
        ),
    );
  }
}