import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "UMA UMA\nうまうま",
          body: '우마우마에 오신 것을 환영합니다',
          image: Image.asset('image/logo.png'),
          decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '나의 취향을 고르다',
            body: '무엇을 먹을지 고민된다면, \n 일식을 좋아한다면,\n 맛집 추천을 원하다면,\n 우마우마',
            image: Image.asset('image/logo.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: '지금 바로 \n 테스트를 시작하세요',
            body: '다음페이지로 넘어가면 시작됩니다',
            image: Image.asset('image/logo.png'),
            decoration: getPageDecoration()
        ),
      ],
      done: const Text('done',
      style: TextStyle(fontFamily: "NanumSquare"),),
      onDone: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip',
      style: TextStyle(fontFamily: "NanumSquare"),),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        ),
        activeColor: Colors.red
      ),
      curve: Curves.bounceOut,
    );
  }
  PageDecoration getPageDecoration(){
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontFamily: "NanumSquare",
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      bodyTextStyle: TextStyle(
        fontFamily: "NanumSquare",
        height: 1.8,
        fontSize: 22,
        color: Colors.white70
      ),
      imagePadding: EdgeInsets.only(top: 70),
      pageColor: Color(0xffa40f16)
    );
  }
}



