import 'dart:js';

import 'package:flutter/material.dart';
import 'package:intro/pages/main.dart';

abstract class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  static Widget makeInfoPage(BuildContext context,
      String imgFile, String foodName, String foodInfo) {
    Widget p = Scaffold(
      appBar: AppBar(
        title: const Text('음식 세부 정보'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => MyPage())
            );
          },
          color: Colors.white,
          icon: const Icon(Icons.home),
        ),
        backgroundColor: Color(0xffa40f16),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: 600, height: 200,
              child: Image.asset(imgFile, fit: BoxFit.cover),
            ),
            const SizedBox(height: 25.0,),
            Text(foodName,
            style: const TextStyle(
              fontFamily: 'NanumSquare',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 19,
            ),textAlign: TextAlign.center,),
            const SizedBox(height: 15.0,),
            Container(
              width : 580,height: 200,
              alignment: Alignment.topCenter,
              color: Colors.white,
              padding: EdgeInsets.all(15.0),
              child: Text(foodInfo,
                style: const TextStyle(
                fontFamily: 'NanumSquare',
                color: Colors.black87,
                height: 2,
              ),textAlign: TextAlign.center,),
            ),
            ElevatedButton( //돌아가기 버튼
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
              ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('돌아가기',
                style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
    return p;
  }
}

class Info_Futomaki extends StatelessWidget {
  const Info_Futomaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_futomaki.jpeg',
    '太巻き\n후토마키', '후토마키는 ‘커다랗다’라는 뜻의 후토와 ‘돌돌 말다’라는 뜻의 마키가 합쳐진 뜻으로, 여러 가지 회와 재료들을 넣고 크게 말아낸 김초밥이다. 후토마키는 지바현의 향토음식인 ‘후토마키마츠리스시’에서 유래되었는데, 간사이 지방에서는 ‘에호우마키’라 하여 고개를 들고 그해 길한 방위를 향해 통째로 먹으면 운세가 좋다고 하는 풍습이 있다.');
    return a;
  }
}
class Info_Gyukatu extends StatelessWidget {
  const Info_Gyukatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_gyukatu.jpeg',
    '牛カツ\n규카츠','규카츠는 자른 쇠고기에 빵가루로 옷을 입혀 식용유에 튀긴 일본식 양식으로 비프카츠, 비프 커틀릿이라고도 불린다. 메이지 시대에 커틀릿이라는 튀긴 송아지고기 또는 쇠고기를 기름에 구운 양식이 소개되었고, 이후 양식의 대중화 과정에서 더 저렴하고 접근성이 쉬운 재료가 요구되면서 커틀릿 재료는 쇠고기에서 돼지고기가 주로 사용되었다.');
    return a;
  }
}
class Info_Gyunikutataki extends StatelessWidget {
  const Info_Gyunikutataki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_gyunikutataki.jpeg',
    '牛肉のたたき\n소고기 타다끼', '여기서 타다끼란 겉만 구운 요리를 의미한다. 소고기를 불에 직접 대어 겉부분만 그을리듯 굽고, 속살은 완전히 익지 않게 한다. 이것을 타다끼라고 부르는 것은 생선의 및간을 할 때나 구운 후 양념을 바를 때 칼의 옆면이나 손바닥 등으로 두들기듯이 해서 흡수를 시켰기 때문이라는 설이 있다. ');
    return a;
  }
}
class Info_Gyutan extends StatelessWidget {
  const Info_Gyutan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_gyutan.jpeg',
    '牛タン\n규탕 구이', '규탕 구이는 소 혀를 잘라서 구운 요리다. 일본에서는 센다이 지역의 규탕 구이가 유명하다. 과거 센다이 주둔하고 있고 미군이 대량의 소고기를 소비하는 것과 동시에 많은 양의 소의 혀를 버렸는데, 종전 직후의 식량난과 더불어 소의 혀를 유용하게 활용하고자 1948년 센다이의 닭꼬치점의 초대 점주 사노케이시로가 규탕 구이 전문점을 개업한 것이 ‘센다이 규탕 구이’의 시작이라고 한다.');
    return a;
  }
}
class Info_Jingisukan extends StatelessWidget {
  const Info_Jingisukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_jingisukan.jpeg',
    'ジンギスカン\n징기스칸', '징기스칸은 일본 홋카이도 지방의 양고기 요리다. 징기스칸은 양고기를 먹는 습관이 없었던 일본인이 양고기를 먹게된 시기, 즉 100년 전에 일본에서 탄생한 요리다. 여러 가지 설이 있는데 당시의 일본인이 양고기 요리라고 하니까 양 목축이 성행한 몽골을 연상해서 일본에 널리 알려진 ‘징기스칸’이라는 이름을 붙였다는 설이 있다. 그러나 실제로는 중국 동북부를 방문한 일본인들이 양고기를 구워서 만드는 중국요리를 본 것이 시초라고 한다.');
    return a;
  }
}
class Info_Kamamesi extends StatelessWidget {
  const Info_Kamamesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_kamamesi.jpeg',
    '釜飯\n가마메시', '가마메시는 일본식 솥밥으로, 솥을 의미하는 가마(釜)와 밥을 의미하는 메시(めし)가 합쳐진 말이다. 밥을 1인분씩 철로 만든 솥에 요리한 것으로 간장, 미림 등의 재료가 들어간다. 밥을 짓기 전에 닭고기, 해산물, 야채, 기타 재료를 넣고, 익힌 다음에는 연어 알을 넣기도 한다. ');
    return a;
  }
}
class Info_Kare extends StatelessWidget {
  const Info_Kare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_kare.jpeg',
    'ハヤシライス\n하야시라이스', '하야시라이스는 효고현의 옛 광산촌인 이쿠노에서 개발된 음식으로, 1868년 해당 마을에 프랑스인 엔지니어가 근무하며 요리를 더 발전시켰다는 기록도 남아 있다. 도쿄역 마루노우치 북쪽 출구의 오아조 4층에 마루젠 카페가 있으며 "원조 하야시라이스"라고 지금도 팔고 있다. 한국에서는 “하야시”가 변형되어 하이라이스라고 칭하고 있다.');
    return a;
  }
}
class Info_Katudon extends StatelessWidget {
  const Info_Katudon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_katudon.jpeg',
    'カツ丼\n가츠동', '일본 요리 중 돈부리의 대표 메뉴 중 하나로, 밥 위에 계란 반숙과 장국으로 졸인 돈가스와 양파를 얹어 먹는 일본의 음식이다. 가츠동의 유래는 다양한 설이 있고 의견이 분분하기 때문에 명확하지 않다. 가츠동의 가츠가 이기다라는 뜻의 일본어 勝つ(かつ）와 발음이 같기 때문에 중요한 시험이나 시합 전에 많이 먹는다고 한다. ');
    return a;
  }
}
class Info_Magurotataki extends StatelessWidget {
  const Info_Magurotataki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_magurotataki.jpeg',
    'マグロたたき\n참치 타다끼', '타다끼란 일본에서 주로 생선을 조리할 때 쓰는 조리법의 하나로, 불에 직접 대어 겉부분만 그을리듯이 굽고, 속살은 완전히 익지 않게 하는 방식이다. 고치현 지역의 ‘가쓰오(가다랑어) 타다키’가 유명하며, 타다키 방식을 통해 비린내를 감추고 겉만 살짝 익혀 맛과 식감을 살리고, 상큼한 소스와 채소를 함께 곁들여서 먹는다. ');
    return a;
  }
}
class Info_Motunabe extends StatelessWidget {
  const Info_Motunabe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_motunabe.jpeg',
    'もつ鍋\n모츠나베', '‘모츠’는 소나 돼지 등의 동물내장을 총칭하며, 요리로 사용되는 인기 식재료 중 하나다. ‘나베’는 일본어로 냄비를 뜻하는데 여기서 더 나아가 냄비에 끓인 찌개 비슷한 일종의 전골 요리도 나베라 부른다. 후쿠오카현의 하카타 요리의 뿌리라 불리는 모츠나베는 시작은 조선에서 왔다고 설이 있다. 모츠나베는 과거에 식재료로 사용하지 않고 버렸던 부위를 사용하여 재탄생시킨, 당시 시대배경이나 가난한 사람들의 지혜가 더해져 만들어낸 창작요리라 할 수 있다. 또한 맛뿐만 아니라, 콜라겐, 비타민이 풍부하여 미용에도 좋고 부추, 양배추 등의 채소도 마음껏 먹을 수 있어 요즘에는 일본여성들이 더 좋아하게 된 요리가 되었다. ');
    return a;
  }
}
class Info_Nagasaki extends StatelessWidget {
  const Info_Nagasaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_nagasaki.jpeg',
    '長崎ちゃんぽん\n나가사키짬뽕', '나가사키 짬뽕은 카스텔라와 더불어 나가사키시의 양대 명물로, 19세기 일본에 정착한 화교 천핑순이 자신이 머물던 푸젠성의 지방 요리인 탕육사면을 변형한 것이다. 천핑순이 개업한 가게인 시카이로는 나가사키 구라바엔(글로버 공원) 언덕 앞에 위치하여, 지금도 4대째 후손이 주인으로 명맥을 이어가고 있다.');
    return a;
  }
}
class Info_Naporitan extends StatelessWidget {
  const Info_Naporitan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_naporitan.jpeg',
    'ナポリタン\n나폴리탄', '사실 나폴리탄은 이탈리아에서 일본에 온 요리가 아니다. 미국의 이탈리아 이민자가 만든 케첩으로 만든 스파게티가 태평양 전쟁 후에 미국에서 일본으로 건너와 나폴리탄의 기원이 되었다. 나폴리탄은 일본의 독자적인 요리로 정착하여 지금은 조금 오래된 찻집이나 학생 식당, 양식 전문점, 스파게티 전문점 등에서 먹을 수 있는 일본의 기본 메뉴가 되었다.');
    return a;  }
}
class Info_Nattou extends StatelessWidget {
  const Info_Nattou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_nattou.jpeg',
    '納豆\n낫토', '낫토는 일본의 전통음식 중 하나로, 젓가락으로 적당히 휘저어서 조미간장과 겨자로 간하여 밥과 함께 먹는다. 기원전 700년대에 도입됐고, 가마쿠라 시대에 귀족과 무사들 사이에서 인기를 끌었었다. 이후 무로마치 시대에 불교의 영향을 받은 채식 요리가 대두되면서 두부와 낫토가 중요해졌다.');
    return a;  }
}
class Info_Omuraisu extends StatelessWidget {
  const Info_Omuraisu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_omuraisu.jpeg',
    'オムライス\n오므라이스', '오므라이스는 오믈렛과 라이스의 합성어인 오믈렛 라이스가 일본식 발음의 영향을 받아서 생긴 단어로 추정되고 있다. 일본에서 처음 나온 서양 요리인 이른바 화양식 요리로, 도쿄 긴자의 렌가테이와 오사카 신사이바시의 홋쿄쿠세이가 서로 원조라고 주장하고 있다. ');
    return a;  }
}
class Info_Otyazuke extends StatelessWidget {
  const Info_Otyazuke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_otyazuke.jpeg',
    'お茶漬け\n오챠즈케', "오차즈케는 쌀밥에 녹차를 부어 먹는 일본 요리로, 말 그대로 따뜻한 '녹차(お茶)'에 '담가(漬ける)' 먹는다는 뜻이다. 일본에서 간식, 호화로운 메뉴를 먹은 뒤 입가심, 연회 자리의 마무리 메뉴, 산악식 메뉴 등으로 오랫동안 사랑받고 있다. 밥을 물에 말아먹는 유즈케(湯漬け), 물밥(미즈즈케)가 기원으로, 이러한 풍습은 쌀밥을 지어먹는 문화와 함께 나타났다. ");
    return a;  }
}
class Info_Ramen extends StatelessWidget {
  const Info_Ramen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_ramen.jpeg',
    'ラーメン\n라멘', "라멘은 중국의 수타 탕면인 라몐(拉面)이 변형된 일본식 중화 요리이다. 메이지 시대에 개항과 함께 요코하마 등지에 중국인이 대거 유입되어 차이나타운이 형성되면서 전해졌다. 난킨소바(南京そば), 시나소바(支那そば), 츄카소바(中華そば) 등으로 불리다가 인스턴트 라멘 브랜드 '삿포로 라멘'과 '닛신식품 치킨라멘'의 영향으로 라멘으로 불리게 되었다.");
    return a;  }
}
class Info_Sasimi extends StatelessWidget {
  const Info_Sasimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_sasimi.jpeg',
    '刺身\n사시미', '사시미는 생선과 같은 재료를 불을 가하지 않고 날 것 그대로 얇게 자르고 간장이나 와사비 등의 조미료를 찍어 먹는 일본 요리이다. 사시미는 옛날에 토막내 버리면 생선의 종류를 알 수 없기 때문에 그 생선의 지느러미나 아가미를 토막에 찔러 알게 한 데서 유래하는 설이 있다. 또한 일설에는 \'토막내기(切り身)\’는 무사가 배를 베는 것을 연상시키기 때문에 \'자른다(切る)\'는 말을 피해 \'찌르다(刺す)\'를 써서 \'회(刺身)\'가 되었다고도 한다.');
    return a;  }
}
class Info_Sityu extends StatelessWidget {
  const Info_Sityu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_sityu.jpeg',
    'クリームシチュー\n크림스튜', '크림스튜는 일본에서 재창조된 경양식으로, 화이트스튜라고도 한다. 프랑스식 블랑케트의 레시피와 유사하여 크림스튜의 직계 조상으로 소개되고 있다. 전후 쇼와시대(1945~1989)부터 지금까지 일본 초등학교에서 빵과 함께 크림스튜가 단골로 나오고 있다. ');
    return a;  }
}
class Info_Sukiyaki extends StatelessWidget {
  const Info_Sukiyaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_sukiyaki.jpeg',
    'すき焼き\n스키야키', '스키야키는 얇게 저민 고기나 채소 등을 얕은 냄비에 굽거나 삶은 요리를 말한다. 일반적인 스키야키는 얇게 썬 쇠고기에 파, 양파, 쑥갓, 표고버섯, 팽이버섯, 청경채, 미나리, 두부, 곤약 등의 재료를 첨가한다. 맛은 간장과 설탕으로 낸다. 간사이 지방에서는 구운 쇠고기를 설탕·간장·우려낸 국물로 조미하는 스키야키가 만들어졌다.');
    return a;  }
}
class Info_Supukare extends StatelessWidget {
  const Info_Supukare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_supukare.jpeg',
    'スープカレー\n스프카레', '스프카레는 일본 최북단 홋카이도의 삿포로에서 혹독한 겨울을 나기 위해 탄생한 음식이다. 스프카레는 말 그대로 카레 탕을 떠먹는 느낌으로,  한국의 탕과 동남아시아의 묽은 커리가 영향을 주었다고 한다.');
    return a;  }
}
class Info_Tantanmen extends StatelessWidget { //확인 - 라멘에 넣을것인지?
  const Info_Tantanmen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_tantanmen.jpeg',
    '坦々麺\n탄탄멘', '탄탄멘은 땅콩 기름에 땅콩, 고춧가루, 마늘 등을 볶고 국수에 얹은 다음 돼지고기, 파 등 고명을 얹어 먹는 음식이다. 탄탄멘은 매운 음식으로 유명한 중국 내륙지역 사천성에서 먹던 것이 일본에서 변형되어 1950년대부터 일본에서 자리를 잡아갔다. 일본의 탄탄멘의 중국식과 달리 육수를 부어 끓이는 식으로 현지화되었다.');
    return a;  }
}
class Info_Tebasaki extends StatelessWidget {
  const Info_Tebasaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_tebasaki.jpeg',
    '手羽先\n테바사키', '테바사키는 매콤달콤한 양념과 소금, 후추, 흰깨 등으로 마무리하는 경우가 많아 바삭한 식감과 펀치가 있는 풍미가 특징이다. 반찬이나 술안주로 다양한 장소에서 인기를 얻고 있다. 일본의 나고야에 있는 닭요리점인 "풍래방(風来坊)"이라는 닭요리점에서 손님에게 테바사키가 최초로 제공되었다. ');
    return a;  }
}
class Info_Tendon extends StatelessWidget {
  const Info_Tendon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_tendon.jpeg',
    '天丼\n텐동', "텐동은 텐푸라(天)+덮밥(丼)으로 튀김을 얹은 일본식 덮밥으로, 텐푸라동(天ぷら丼)을 줄여서 텐동이라고 쓰는 게 일반적이다. 대표적인 일본식 덮밥으로, 덴푸라의 종류가 많기 때문에 올라가는 튀김 종류도 다양하지만 고기 튀김이 올라가는 경우는 거의 없다. 이는 덴푸라가 '고기를 금하는 기간'인 포르투갈어 'Têmpora'에서 유래했기 때문이다.");
    return a;  }
}
class Info_Tirasizusi extends StatelessWidget {
  const Info_Tirasizusi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_tirasizusi.jpeg',
    'ちらし寿司\n치라시즈시', '치라시란 말은 흩뿌린다는 의미이다. 말 그대로 식초로 양념한 밥 위에 다양한 재료를 흩뿌리듯이 올린 것이다. 팔고 남은 생선이가 먹다 남은 재료를 밥 위에 올려 먹던 것이 그 기원으로 알려져 있다. 하지만 현재는 치라시즈시도 고급화되어서 초밥의 재료가 될만한 재료가 올라가는 경우도 있다. 해물 위에 간장이나 소스를 직접 뿌려 밥과 함께 수저로 떠먹거나, 수저로 밥을 뜬 뒤 간장을 묻힌 해물을 밥 위에 올려 먹는다.');
    return a;  }
}
class Info_Unaginokabayaki extends StatelessWidget {
  const Info_Unaginokabayaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_unaginokabayaki.png',
    'うなぎの蒲焼き\n우나기노카바야키', '우나기노카바야키는 장어에 간장을 발라 숯불에 구운 요리다. 한국에서 여름 보양식으로 삼계탕을 먹듯이 일본에서는 우나기노카바야키를 여름에 즐겨 먹는다. 일본에서는 여름 토왕 축제날에 장어구리를 먹는 관습이 있다. 토왕 축제일에는 우리가 더운 여름을 장어의 풍부한 영양으로 이겨내자는 의미로 장어구이를 먹는다고 한다.');
    return a;  }
}
class Info_Yakisoba extends StatelessWidget {
  const Info_Yakisoba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_yakisoba.jpeg',
    '焼きそば\n야키소바', '야키소바는 중화면에 소스, 채소, 고기를 넣고 기름에 볶아서 만드는 일본식 볶음면으로, 원형은 중화 요리의 차오몐이다. 소바는 메밀로 만든 면이 원형이지만, 물자가 귀한 전쟁 중에 메밀로 제분한 소바는 귀했기에 밀가루로 만들어진 중화면이 사용되었고, 물에 삶는 방식 역시 시간이 많이 걸린다는 이유로 기름에 지져내는 방식으로 바뀌었다.');
    return a;  }
}
class Info_Yakitori extends StatelessWidget {
  const Info_Yakitori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = InfoPage.makeInfoPage(context, 'image/Food_yakitori.webp',
    '焼き鳥\n야키토리', '야키토리는 일본식 닭고기 요리로, 간장을 비롯한 양념을 발라꼬치에 꿰어 달달하고 짭짤하게 굽는 것이 특징이다. 닭의 심장이나 혈관을 구워 만들기도 하고, 껍질과 가슴 연골만 모아서 만들기도 한다. 야키토리는 쇼와 시대  당시 고급 식재료였던 닭고기를 이용한 야키토리 포장마차가 등장하면서 처음 모습을 드러냈다. 1960년대에 미국으로부터 닭의 대량 생산기법이 일본에 도입되면서 야키토리가 대중화되었다. ');
    return a;  }
}