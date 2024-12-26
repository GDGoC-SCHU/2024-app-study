import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("3주차 김동환 Music Player"),
          titleTextStyle: const TextStyle(color: Colors.purpleAccent),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          color: Colors.deepPurpleAccent,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 노래 앨범 커버 이미지
                CircleAvatar(
                  radius: 100,
                  foregroundImage:
                      AssetImage('assets/images/Bleeding_Love.jpg'),
                ),

                SizedBox(height: 30), // 간격 추가
                // 노래 제목 텍스트
                Text(
                  'Bleeding Love',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                // 노래 가수 텍스트
                Text(
                  'Leona Lewis',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Slider(
                  value: 0.4,
                  //아무 동작도 하지 않도록 설정정
                  onChanged: null,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.fast_rewind),
                      //아무 동작도 하지 않도록 설정정
                      onPressed: null,
                    ),SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.play_arrow),
                      //아무 동작도 하지 않도록 설정정
                      onPressed: null,
                    ),SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.fast_forward),
                      //아무 동작도 하지 않도록 설정정
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
