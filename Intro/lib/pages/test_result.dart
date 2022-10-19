import 'dart:js';

import 'package:flutter/material.dart';
import 'package:intro/pages/onboarding.dart';
import 'main.dart';
import 'test_page.dart';

abstract class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  static Widget makeResultPage (BuildContext currentPage, String txt) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('취향 결과'),
          backgroundColor: const Color(0xffa40f16),
      ), 
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top:10, left:20, right: 20),
            margin: const EdgeInsets.only(top:150, left: 40, right: 40),
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: const Color(0xffa40f16),
                    style: BorderStyle.solid,
                    width:1
                )
            ),
            child: Center(child: Text(
            txt,
            style: const TextStyle(fontSize: 20, color: Colors.black),)),
          ), 
          Container(
            padding: const EdgeInsets.only(top:10, left:20, right:20),
            margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
            height: 50,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffa40f16)
                ),
                onPressed: () {
                  Navigator.push(currentPage, MaterialPageRoute(
                      builder: (currentPage) => MyPage()
                  ),
                );
              }, child: const Text('홈 화면으로 돌아가기'),),
            ),
          ),
        ],
      ),
    );
  }
}

class R_mania extends StatelessWidget {
  const R_mania({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 일식 마니아');
    return r;
  }
}
class R_explorer extends StatelessWidget {
  const R_explorer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 일식 탐험가');
    return r;
  }
}
class R_alcohol extends StatelessWidget {
  const R_alcohol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 반주 러버');
    return r;
  }
}
class R_soulMates extends StatelessWidget {
  const R_soulMates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 일식 천생연분');
    return r;
  }
}
class R_fusion extends StatelessWidget {
  const R_fusion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 퓨전 마니아');
    return r;
  }
}
class R_rice extends StatelessWidget {
  const R_rice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget r = ResultPage.makeResultPage(context, '당신은 밥을 좋아하는... ');
    return r;
  }
}



