import 'package:flutter/material.dart';
import 'onboarding.dart';

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
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Screen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const OnBoardingPage()),
                  );
                },
                child: const Text('취향테스트 시작하기')
            ),
            ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('장르별 음식 모아보기')
            )
          ],
         ),
      ),
    );
  }
}

