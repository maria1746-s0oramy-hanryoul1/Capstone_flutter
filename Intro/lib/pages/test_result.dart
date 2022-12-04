import 'package:flutter/material.dart';
import 'main.dart';
import 'food_info.dart';

abstract class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  static Widget NewResultPage (
      BuildContext currentPage,
      Widget titleContainer, Widget detailContainer) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('테스트 결과'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(currentPage, MaterialPageRoute(
                builder: (currentPage) => MyPage()
            ),
            );
          },
          color: Colors.white,
          icon: const Icon(Icons.home),
        ),
        backgroundColor: const Color(0xffa40f16),
      ),
      body: ListView(
        children: [
          titleContainer,
          detailContainer,
        ],
      ),
    );
  }
  static Widget makeResultContainer (BuildContext currentPage,
      String resultImage, String resultTxt, String resultDetails) {
    return Container(
      padding: const EdgeInsets.only(top:15, left:10, right:10),
      margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
      color: Colors.transparent,
      child: Column(
          children: [
            Image.asset(resultImage, fit:BoxFit.cover),
            const SizedBox(height: 20.0,),
            Text(resultTxt, style: const TextStyle(
              color:Colors.black, fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "NanumSquare",
            ),),
            const SizedBox(height: 20.0),
            const Divider(thickness: 2, height: 1,
                indent: 70.0, endIndent: 70.0, //empty space of left and right
                color:Color(0xffa40f16)),
            const SizedBox(height: 20.0),//the color of line
            Text(resultDetails,//description of the result
              style: const TextStyle(
              color:Colors.black, fontSize: 15,
              fontFamily: "NanumSquare", height: 1.8),
            textAlign: TextAlign.center,),
            const SizedBox(height: 25.0,)
          ]
      ),
    );
  }
  static Widget makeFoodsContainer(Row firstRow, Row secondRow, Row thirdRow) {
    var lineSpace = 29.0;
    return Container(
        padding: const EdgeInsets.only(top: 30, left:10, right:10, bottom: 15),
        margin: const EdgeInsets.only(top: 10, left:30, right: 30, bottom: 30),
        color: const Color(0xfffaebd7),
        child: Column(
          children: [
            const Text('추천 음식',
              style: TextStyle(color: Colors.black,
              fontSize: 18, fontWeight: FontWeight.bold,
              fontFamily: "NanumSquare"),),
            SizedBox(height: lineSpace), firstRow,
            SizedBox(height: lineSpace), secondRow,
            SizedBox(height: lineSpace), thirdRow,
            const SizedBox(height: 25.0,)
        ]
    ));
  }
  // static Row FoodsRow() {}
  static Widget FoodsWithText (String imageFile, String foodName,
      String foodDescription, BuildContext currentPage,
      Widget FoodInfoPage) {
    return Column(
      children: [
        Container(
            height: 170, width: 250,
            color: Colors.white,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                iconSize: 300,
                onPressed: (){
                  Navigator.push(currentPage,
                  MaterialPageRoute(builder: (currentPage)=>FoodInfoPage));
                },
                icon: Image.asset(
                  imageFile, height: 200, width: 300,
                  fit: BoxFit.cover,))
        ),
        const SizedBox(height: 10.0),
        Text(foodName, style: const TextStyle(
          color:Colors.black,
          fontFamily: 'NanumSquare',
          fontWeight: FontWeight.bold
        ),
            textAlign: TextAlign.center),
        const SizedBox(height: 6.0,),
        Text(foodDescription, style: const TextStyle(
          color:Color(0xff5a5a5a),
          fontFamily: 'NanumSquare',
        ),
        textAlign: TextAlign.center,)
      ],
    );
  }
}

class R_mania extends StatelessWidget {
  const R_mania({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_mania.png', '일식 마니아', '일본 음식을 즐겨 먹는 당신은 일식 마니아!\n이번 기회에 좀 더 특별한 일식에 도전해보는건 어떨까요?');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ResultPage.FoodsWithText(
                'image/Food_gyutan.jpeg', '규탕','소의 혀를 구운 요리',
                context, const Info_Gyutan()),
            ResultPage.FoodsWithText(
              'image/Food_jingisukan.jpeg', '징기스칸','일본 홋카이도 지방의 양고기 요리',
            context, const Info_Jingisukan())
          ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ResultPage.FoodsWithText(
                'image/Food_tirasizusi.jpeg', '치라시즈시','밥과 해산물에 소스를 뿌려 먹는 요리',
            context, const Info_Tirasizusi()),
            ResultPage.FoodsWithText(
                'image/Food_unaginokabayaki.png', '우나기노카바야키','장어에 간장을 발라 숯불에 구운 요리',
            context, const Info_Unaginokabayaki())
          ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ResultPage.FoodsWithText(
                'image/Food_gyunikutataki.jpeg', '소고기타다키','소고기의 겉만 구운 요리',
            context, const Info_Gyunikutataki())
          ],
        );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
      firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
class R_explorer extends StatelessWidget {
  const R_explorer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_Explorer.png', '일식 탐험가', '아직 당신의 취향을 저격하는 일식을 찾지 못했나요?\n우마우마가 추천하는 대중적인 일식부터 탐험해보면\n당신의 취향인 일식을 찾을 수 있을지도?!');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_tantanmen.jpeg', '탄탄멘','땅콩기름 베이스의 중국식 비빔국수에\n스프를 넣은 요리',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_ramen.jpeg', '라멘','중화면을 사용한 일본의 국민 면요리',
            context, const Info_Ramen())
      ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_gatudon.jpeg', '가츠동','밥 위에 계란과 돈가스를 올린 덮밥',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_sukiyaki.jpeg', '스키야키','얇게 저민 고기와 채소를 굽거나 삶은 요리',
            context, const Info_Sukiyaki())
      ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_yakitori.webp', '야키토리','양념을 발라 구운 일본식 닭꼬치',
            context, const Info_Yakitori())
      ],
    );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
        firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
class R_fusion extends StatelessWidget {
  const R_fusion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_Fusion.png', '퓨전 마니아', '매번 같은 느낌의 일식에 질렸나요?\n그런 당신에게는 일본의 퓨전 음식을 추천드려요.\n아니 이게 다 일본에서 시작된 음식이라고?!');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_naporitan.jpeg', '나폴리탄','케첩으로 만든 일본식 스파게티',
            context, const Info_Naporitan()),
        ResultPage.FoodsWithText(
            'image/Food_omuraisu.jpeg', '오므라이스','몽글몽글한 식감의 일본식 달걀덮밥',
            context, const Info_Ramen())
      ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_supukare.jpeg', '스프카레','카레를 탕으로 떠먹는 요리',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_kare.jpeg', '하야시라이스','카레라이스와 유사한 일본식 경양식',
            context, const Info_Kare())
      ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_sityu.jpeg', '크림스튜','따뜻하고 부드러운 일본식 크림스프',
            context, const Info_Sityu())
      ],
    );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
        firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
class R_alcohol extends StatelessWidget {
  const R_alcohol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_Alcohol.png', '반주 러버', '식사와 함께 술을 즐기는 당신은 반주 러버!\n우마우마가 그런 당신을 위해 술과 어울리는 일식을 준비해보았어요.\n술 한 잔~ 안주 한 입~으로 스트레스 날려버려~~!');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_motunabe.jpeg', '모츠나베','소의 소장과 채소가 들어간 일본 냄비요리',
            context, const Info_Motunabe()),
        ResultPage.FoodsWithText(
            'image/Food_sukiyaki.jpeg', '스키야키','얇게 저민 고기와 채소를 굽거나 삶은 요리',
            context, const Info_Sukiyaki())
      ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_magurotataki.jpeg', '참치타다끼','참치를 겉만 익힌 요리',
            context, const Info_Magurotataki()),
        ResultPage.FoodsWithText(
            'image/Food_sasimi.jpeg', '사시미','생선을 날 것 그대로 먹는 요리',
            context, const Info_Sasimi())
      ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_tebasaki.jpeg', '테바사키','간장을 베이스로 한 일본식 닭날개튀김',
            context, const Info_Yakitori())
      ],
    );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
        firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
class R_rice extends StatelessWidget {
  const R_rice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_Rice.png', '클린 입맛', '깔끔한 입맛을 가진 당신에겐 일본 가정식을 추천해요!\n맛과 건강을 모두 챙길 수 있는 일본 가정식 메뉴를\n우마우마가 골라보았어요!');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_nattou.jpeg', '낫토','발효시킨 콩으로 만든 일본 전통음식',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_yakisoba.jpeg', '야키소바','중화면에 다양한 재료를 볶은 일본식 볶음면',
            context, const Info_Ramen())
      ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_tendon.jpeg', '텐동','밥 위에 튀김을 올린 일본식 덮밥',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_kamamesi.jpeg', '가마메시','닭고기, 해산물, 야채가 들어간 일본식 솥밥',
            context, const Info_Sukiyaki())
      ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_otyazuke.jpeg', '오차즈케','쌀밥에 녹차를 부어 먹는 요리',
            context, const Info_Yakitori())
      ],
    );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
        firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
class R_soulmates extends StatelessWidget {
  const R_soulmates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget titleContainer = ResultPage.makeResultContainer(
        context, 'image/R_Soulmates.png', '일식 천생연분', '당신은 일식과 떼려야 뗄 수 없는 사이!\n우마우마가 추천하는 음식 중\n당신의 취향이 하나쯤은 있을 것!');
    var firstRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_magurotataki.jpeg', '참치타다끼','참치의 겉만 구운 요리',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_futomaki.jpeg', '후토마키','회와 다양한 재료를 넣고\n말아서 만든 일본식 김초밥',
            context, const Info_Ramen())
      ],);
    var secondRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_gyukatu.jpeg', '규카츠','빵가루 입힌 쇠고기를 튀긴\n일본식 양식',
            context, const Info_Tantanmen()),
        ResultPage.FoodsWithText(
            'image/Food_nagasaki.jpeg', '나가사키짬뽕','해산물이 들어간 일본식 백짬뽕',
            context, const Info_Sukiyaki())
      ],);
    var thirdRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ResultPage.FoodsWithText(
            'image/Food_yakitori.webp', '야키토리','양념을 발라 구운 일본식 닭꼬치',
            context, const Info_Yakitori())
      ],
    );
    Widget foodsContainer = ResultPage.makeFoodsContainer(
        firstRow, secondRow, thirdRow);

    Widget thisPage = ResultPage.NewResultPage(
        context, titleContainer, foodsContainer);
    return thisPage;
  }
}
