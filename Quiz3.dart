import 'package:flutter/material.dart';

void main() {
  runApp(Quiz3());
}

class Quiz3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayerScreen(),
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3주차 정재민 Music Player'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 노래 커버 사진
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bigNaughty.jpg'), 
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 20),
            // 노래 제목
            Text(
              'Hero Death',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // 가수 이름
            Text(
              '빅나티(서동현)',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 30),
            // 슬라이더
            Slider(
              value: 0.4,
              onChanged: (double value) {},
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 뒤로 가기 아이콘
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.fast_rewind),
                  iconSize: 36,
                  color: Colors.orange,
                ),
                // 재생 아이콘
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  iconSize: 36,
                  color: Colors.orange,
                ),
                // 앞으로 가기 아이콘
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.fast_forward),
                  iconSize: 36,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
