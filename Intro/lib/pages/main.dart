import 'package:flutter/material.dart';
import 'package:intro/pages/view_all_results.dart';
import 'package:flutter/services.dart';
import 'onboarding.dart';
import 'genre_page.dart';
import 'test_page.dart';

import 'test_result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    //화면 세로 고정
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return const MaterialApp(
      home: R_soulmates(),
     // home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget{
  const MyPage({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    final ButtonStyle mainButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffa40f16),
        textStyle: const TextStyle(
            fontSize: 15, color: Colors.white,
            fontFamily: 'NotoSans'),
        minimumSize: const Size(200, 60)
    );
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
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
            fontFamily: 'NotoSans'),
            ),
            Container( height: 30,),
            ElevatedButton(
                style: mainButtonStyle,
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const TestPage()),
                  );
                },
                child: const Text('취향테스트 시작하기',
                )),
            Container(
              height: 15,
            ),
            ElevatedButton(
                style: mainButtonStyle,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const GenrePage()),
                  );
                },
                child: const Text('장르별 음식 모아보기'),
            )
          ],
         ),
      ),
    );
  }
}


