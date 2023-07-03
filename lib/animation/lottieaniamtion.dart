import 'dart:ui';

// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Lottieaniamtion extends StatefulWidget {
  const Lottieaniamtion({super.key});

  @override
  State<Lottieaniamtion> createState() => _LottieaniamtionState();
}

class _LottieaniamtionState extends State<Lottieaniamtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 236, 240),
      body: Stack(
        children: [
          // Positioned.fill(
          //     child: BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
          // child: SizedBox(),)),
          Center(
            child: Lottie.network(
                "https://assets5.lottiefiles.com/packages/lf20_4aPDeJjgi3.json"),
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(),
          )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Text(
                            "Learn Design & Code",
                            style: TextStyle(
                              fontSize: 60,
                              height: 1.2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "In this case, the text will be displayed as with the first letter of each word capitalized.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  // ignore: sized_box_for_whitespace

                  Positioned(
                      height: 100,
                      width: 300,
                      // left: 5,
                      right: 500,
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 1.0,
                          top: 80,
                          right: 150,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              // foregroundColor:MaterialStateProperty ,
                              ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Started".toUpperCase(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
