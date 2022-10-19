import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'genre_page.dart';
import 'test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
     home: OnBoardingPage(),
    );
  }
}


class MyPage extends StatelessWidget{
  const MyPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('うまうま'),
        backgroundColor: const Color(0xffa40f16),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('우마우마에 오신 것을 환영합니다.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Container( height: 30,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffa40f16)
                ),
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const TestPage()),
                  );
                },
                child: const Text('취향테스트 시작하기',
                style: TextStyle(fontSize: 15, color: Colors.white),)
            ),
            Container(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffa40f16)
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const GenrePage()),
                  );
                },
                child: const Text('장르별 음식 모아보기',
                style: TextStyle(fontSize: 15, color: Colors.white),)
            )
          ],
         ),
      ),
    );
  }
}


