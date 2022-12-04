import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'main.dart';
import 'test_result.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);
    static ButtonStyle testPageButtonStyle = ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffa40f16),
      textStyle: const TextStyle(
        fontSize: 15, color: Color(0xffa40f16),
        fontFamily: 'NanumSquare', fontWeight: FontWeight.bold),
      minimumSize: const Size(200,100)
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('일식 취향 테스트'),
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
            child: const Center(child: Text(
                '내 취향에 맞는 일식은 무엇일까요?\n시작하기를 눌러 테스트를 진행해보세요.',
            style: TextStyle(fontSize: 20, color: Colors.black,
            fontFamily: 'NanumSquare', height: 1.5),
            textAlign: TextAlign.center,)
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top:10, left:20, right:20),
            margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: testPageButtonStyle,
                    onPressed: (){ Navigator.push( context,
                      MaterialPageRoute(
                          builder: (context) => const MyPage()
                      ),
                  );
                }, child: const Text('뒤로가기')),
                ElevatedButton(
                    style: testPageButtonStyle,
                    onPressed: (){ Navigator.push( context,
                      MaterialPageRoute(
                          builder: (context) => Qa_1()
                      ),
                    );
                      }, child: const Text('시작하기')),
              ],
            )
          ),
        ],
      ),
    );
  }

  static Widget buildListView (String q_txt, BuildContext currentPage,
      double progressData, Widget nextPage_1, Widget nextPage_2) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('일식 취향 테스트'),
          backgroundColor: const Color(0xffa40f16),
      ),
      body: ListView(
        children: [
          Container( //빨간 테두리 박스
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
            child: Center(
              child: Column( //박스 안 진행바와 텍스트
                mainAxisAlignment: MainAxisAlignment.start,
                children : [
                Padding(padding: const EdgeInsets.all(20.0),
                  child: LinearPercentIndicator(
                  alignment: MainAxisAlignment.center,
                      width: 300.0,
                    lineHeight: 15.0,
                    percent: progressData,
                    barRadius: const Radius.circular(16),
                    backgroundColor: const Color(0xffb5b5b5),
                    progressColor: const Color(0xffa40f16),
                    ),
                ),
                const SizedBox(height: 45.0,),
                Text(q_txt,
                  style: const TextStyle(fontSize: 20, color:Colors.black),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
            ),
          ),
            Container( //yes or no 선택지 컨테이너
              padding: const EdgeInsets.only(top:10, left:20, right:20),
              margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: testPageButtonStyle,
                      onPressed: (){
                        // Navigator.pop(currentPage, progressData);
                        Navigator.push(currentPage, MaterialPageRoute(
                              builder: (currentPage) => nextPage_1
                          ),
                        );
                        }, child: const Text('YES')),
                  ElevatedButton(
                      style: testPageButtonStyle,
                      onPressed: (){
                        // Navigator.pop(currentPage, progressData);
                        Navigator.push( currentPage, MaterialPageRoute(
                              builder: (currentPage) => nextPage_2
                      ),
                    );
                  }, child: const Text('NO')),
                ],
              )
          ),
    ],
      ),
    );
  }
}

class Qa_1 extends StatelessWidget {
  const Qa_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.0;
    Widget qa_1 = TestPage.buildListView(
        '일본 음식을 자주 먹는 편이다', context, percent, Qb_1(), Qb_2()
    );
    return qa_1;
  }
}


class Qb_1 extends StatelessWidget {
  const Qb_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.2;
    Widget qb_1 = TestPage.buildListView(
        '나는 새로운 일식에\n도전하고 싶다', context, percent, Qc_1(), Qc_2()
    );
    return qb_1;
  }
}
class Qb_2 extends StatelessWidget {
  const Qb_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.2;
    Widget qb_2 = TestPage.buildListView(
        '나는 일본 스타일이 강한 일식을\n먹어보고 싶다', context, percent, Qc_3(), Qc_2()
    );
    return qb_2;
  }
}

class Qc_1 extends StatelessWidget {
  const Qc_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.4;
    Widget qc_1 = TestPage.buildListView(
        '식사 예산이 충분하다', context, percent, Qd_1(), Qd_3()
    );
    return qc_1;
  }
}
class Qc_2 extends StatelessWidget {
  const Qc_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.5;
    Widget qc_2 = TestPage.buildListView(
        '퓨전 음식을 좋아한다', context, percent, Qd_2(), Qd_1()
    );
    return qc_2;
  }
}
class Qc_3 extends StatelessWidget {
  const Qc_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.5;
    Widget qc_3 = TestPage.buildListView(
        '날 것을 좋아한다', context, percent, Qd_4(), Qd_3()
    );
    return qc_3;
  }
}

class Qd_1 extends StatelessWidget {
  const Qd_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.6;
    Widget qd_1 = TestPage.buildListView(
        '여유롭게 식사를 즐길 수 있다', context, percent, R_mania(), Qe_1()
    );
    return qd_1;
  }
}
class Qd_2 extends StatelessWidget {
  const Qd_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.75;
    Widget qd_2 = TestPage.buildListView(
        '식사 예산이 충분하다', context, percent, R_explorer(), R_fusion()
    );
    return qd_2;
  }
}
class Qd_3 extends StatelessWidget {
  const Qd_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.75;
    Widget qd_3 = TestPage.buildListView(
        '술과 함께 즐기는 음식이 좋다', context, percent, R_alcohol(), R_rice()
    );
    return qd_3;
  }
}
class Qd_4 extends StatelessWidget {
  const Qd_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.75;
    Widget qd_4 = TestPage.buildListView(
        '퓨전 음식을 좋아한다', context, percent, R_soulmates(), R_explorer()
    );
    return qd_4;
  }
}

class Qe_1 extends StatelessWidget {
  const Qe_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = 0.8;
    Widget qe_1 = TestPage.buildListView(
        '날 것을 좋아한다', context, percent, R_mania(), R_explorer()
    );
    return qe_1;
  }
}

