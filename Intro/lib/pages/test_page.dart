import 'package:flutter/material.dart';
import 'package:intro/pages/onboarding.dart';
import 'main.dart';
import 'test_result.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

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
            style: TextStyle(fontSize: 20, color: Colors.black),)),
          ),
          Container(
            padding: const EdgeInsets.only(top:10, left:20, right:20),
            margin: const EdgeInsets.only(top: 30, left: 40, right: 40),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffa40f16)
                    ),
                    onPressed: (){ Navigator.push( context,
                      MaterialPageRoute(
                          builder: (context) => const MyPage()
                      ),
                  );
                }, child: const Text('뒤로가기')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffa40f16)
                    ),
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
      Widget nextPage_1, Widget nextPage_2) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('일식 취향 테스트'),
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
              q_txt,
              style: const TextStyle(fontSize: 20, color:Colors.black),
            )
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffa40f16)
                      ),
                      onPressed: (){
                        Navigator.push(currentPage, MaterialPageRoute(
                              builder: (currentPage) => nextPage_1
                          ),
                        );
                        }, child: const Text('YES')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffa40f16)
                      ),
                      onPressed: (){
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
    Widget qa_1 = TestPage.buildListView(
        '일본 음식을 자주 먹는 편이다', context, Qb_1(), Qb_2()
    );
    return qa_1;
  }
}


class Qb_1 extends StatelessWidget {
  const Qb_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qb_1 = TestPage.buildListView(
        '나는 새로운 일식에\n도전하고 싶다', context, Qc_1(), Qc_2()
    );
    return qb_1;
  }
}
class Qb_2 extends StatelessWidget {
  const Qb_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qb_2 = TestPage.buildListView(
        '나는 일본 스타일이 강한 일식을\n먹어보고 싶다', context, Qc_3(), Qc_2()
    );
    return qb_2;
  }
}

class Qc_1 extends StatelessWidget {
  const Qc_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qc_1 = TestPage.buildListView(
        '식사 예산이 충분하다', context, Qd_1(), Qd_3()
    );
    return qc_1;
  }
}
class Qc_2 extends StatelessWidget {
  const Qc_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qc_2 = TestPage.buildListView(
        '퓨전 음식을 좋아한다', context, Qd_2(), Qd_1()
    );
    return qc_2;
  }
}
class Qc_3 extends StatelessWidget {
  const Qc_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qc_3 = TestPage.buildListView(
        '날 것을 좋아한다', context, Qd_4(), Qd_3()
    );
    return qc_3;
  }
}

class Qd_1 extends StatelessWidget {
  const Qd_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qd_1 = TestPage.buildListView(
        '여유롭게 식사를 즐길 수 있다', context, R_mania(), Qe_1()
    );
    return qd_1;
  }
}
class Qd_2 extends StatelessWidget {
  const Qd_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qd_2 = TestPage.buildListView(
        '식사 예산이 충분하다', context, R_explorer(), R_fusion()
    );
    return qd_2;
  }
}
class Qd_3 extends StatelessWidget {
  const Qd_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qd_3 = TestPage.buildListView(
        '술과 함께 즐기는 음식이 좋다', context, R_alcohol(), R_rice()
    );
    return qd_3;
  }
}
class Qd_4 extends StatelessWidget {
  const Qd_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qd_4 = TestPage.buildListView(
        '퓨전 음식을 좋아한다', context, R_soulMates(), R_explorer()
    );
    return qd_4;
  }
}

class Qe_1 extends StatelessWidget {
  const Qe_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget qe_1 = TestPage.buildListView(
        '날 것을 좋아한다', context, R_mania(), R_explorer()
    );
    return qe_1;
  }
}

