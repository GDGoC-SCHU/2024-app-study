import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Simple_Music_App());
}

class Simple_Music_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text("3주차 기디언 Music Player"),
          backgroundColor: Colors.blue.shade200,
        ),
        backgroundColor: Colors.blue.shade300,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/circles_song.jpg"),
                        radius: 100,
                        // child: Image.asset(
                        //   "assets/images/circles_song.jpg",
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Circles",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Post Malone",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Slider(
                      value: 0.4,
                      onChanged: (double value) {},
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.fast_rewind,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.fast_forward,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
