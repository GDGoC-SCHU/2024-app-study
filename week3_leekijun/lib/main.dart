import 'package:flutter/material.dart';
import 'weather.dart'; // Weather_App 클래스가 정의된 파일
import 'musicPlayer.dart';

import 'dart:math';


void main() {
  runApp(const MusicPlayer());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // home: MusicPlayer(),
//     );
//   }
// }
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BBANTO"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: const Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Hello"), Text("Hello"), Text("Hello")],
        ),
      ),
    );
  }
}
