import 'dart:js';

import 'package:flutter/material.dart';
import 'package:intro/pages/main.dart';

abstract class MakeInfoPage extends StatelessWidget {
  const MakeInfoPage({Key? key}) : super(key: key);

  static Widget makeInfoPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('음식 세부 정보'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => MyPage())
            );
          },
          color: Colors.white,
          icon: const Icon(Icons.home),
        ),
        backgroundColor: Color(0xffa40f16),
      ),
      body: ListView(
        children: [
          const SizedBox(width: 200.0,height: 200.0,),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MyPage()));
          }, child: Text('돌아가기 \n 미구현'))
        ],
      ),
    );
  }
}

class Info_Futomaki extends StatelessWidget {
  const Info_Futomaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Gyukatu extends StatelessWidget {
  const Info_Gyukatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Gyunikutataki extends StatelessWidget {
  const Info_Gyunikutataki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Gyutan extends StatelessWidget {
  const Info_Gyutan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Jingisukan extends StatelessWidget {
  const Info_Jingisukan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Kamamesi extends StatelessWidget {
  const Info_Kamamesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Kare extends StatelessWidget {
  const Info_Kare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Katudon extends StatelessWidget {
  const Info_Katudon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Magurotataki extends StatelessWidget {
  const Info_Magurotataki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Motunabe extends StatelessWidget {
  const Info_Motunabe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Nagasaki extends StatelessWidget {
  const Info_Nagasaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;
  }
}
class Info_Naporitan extends StatelessWidget {
  const Info_Naporitan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Nattou extends StatelessWidget {
  const Info_Nattou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Omuraisu extends StatelessWidget {
  const Info_Omuraisu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Otyazuke extends StatelessWidget {
  const Info_Otyazuke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Ramen extends StatelessWidget {
  const Info_Ramen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Sasimi extends StatelessWidget {
  const Info_Sasimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Sityu extends StatelessWidget {
  const Info_Sityu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Sukiyaki extends StatelessWidget {
  const Info_Sukiyaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Supukare extends StatelessWidget {
  const Info_Supukare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Tantanmen extends StatelessWidget { //확인 - 라멘에 넣을것인지?
  const Info_Tantanmen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Tebasaki extends StatelessWidget {
  const Info_Tebasaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Tendon extends StatelessWidget {
  const Info_Tendon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Tirasizusi extends StatelessWidget {
  const Info_Tirasizusi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Unaginokabayaki extends StatelessWidget {
  const Info_Unaginokabayaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Yakisoba extends StatelessWidget {
  const Info_Yakisoba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}
class Info_Yakitori extends StatelessWidget {
  const Info_Yakitori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget a = MakeInfoPage.makeInfoPage(context);
    return a;  }
}