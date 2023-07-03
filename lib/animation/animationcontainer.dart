// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerAnime extends StatefulWidget {
  const ContainerAnime({super.key});

  @override
  State<ContainerAnime> createState() => _ContainerAnimeState();
}

class _ContainerAnimeState extends State<ContainerAnime>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 123, 175),
        title: Center(child: Text("Animation Container")),
        
      ),
      body: Center(
        child: AnimatedSize(
          // key:this,
          duration: Duration(
            seconds: 1,
          ),
          child: Container(
            // height: double.infinity,
            // width: double.infinity,
            child: Image.network(
              "https://images.unsplash.com/photo-1682687980961-78fa83781450?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
