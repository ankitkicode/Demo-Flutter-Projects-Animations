// ignore_for_file: prefer_const_constructors, must_call_super, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> with SingleTickerProviderStateMixin {

late final AnimationController _controller;
@override
  void initState() {
    
    super.initState();
    _controller=AnimationController( duration: Duration(seconds: 3), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
  }
  bool bookMarked=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie Animation"),
        backgroundColor: Color.fromARGB(255, 16, 27, 16),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            if(bookMarked==false){
              bookMarked=true;
              _controller.forward();
            }else{
              bookMarked=false;
              _controller.reverse();
            }
          },
          child: Container(
            height: 200,
            width: 200,
            // decoration: BoxDecoration(
            //   color: Color.fromARGB(255, 43, 138, 216)
            // ),
            child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_xdfeea13.json',
            controller: _controller,
            height: 50,
            width: 80,fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}