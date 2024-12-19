import 'package:flutter/material.dart';

void main() {
  runApp(const Weather_App());
}

class Weather_App extends StatelessWidget {
  const Weather_App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("기디언 App"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "4°C",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Chilly",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Jakarta, Indonesia",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
