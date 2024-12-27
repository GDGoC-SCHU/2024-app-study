import 'package:flutter/material.dart';
import 'dart:math';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Weather App'),
            // '이기준 App - Person: ${person.name} ${person.age}, Circle Area: ${area.toStringAsFixed(2)}'),
            centerTitle: true),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue.shade500,
                Colors.lightBlue.shade200,
              ],
            ),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.wb_sunny, // 태양
                  size: 100,
                  color: Colors.yellow, // 노란색
                ),
                SizedBox(height: 20),
                Text(
                  '25°C',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '맑음',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  '아산, 충정남도',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 60),
                Upgrade(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Upgrade extends StatelessWidget {
  const Upgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.red),
                  ),
              child: const Text(
                '습도\n70%',
                textAlign: TextAlign.center,
                // style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.red),
                  ),
              child: const Text(
                '풍속\n8 km/h',
                //textAlign: TextAlign.left,
                // style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  //border: Border.all(color: Colors.red),
                  ),
              child: const Text(
                '기압\n960 hPa',
                textAlign: TextAlign.center,
                //style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
