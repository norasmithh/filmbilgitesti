import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(FilmBilgiTesti());

class FilmBilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.purple[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List <Widget> secimler = [];

  List<Soru> soruBankasi =[

    Soru(soruMetni: '2010 filmi The Social Network  Twitter ın oluşması hakındadır.', soruYaniti: false),
    Soru(soruMetni: 'Maatrix de Neo kırmızı hapı aldı.', soruYaniti: true),
    Soru(soruMetni: 'Rocky nin senaryosunu  Anold Schwarzenegger yazdı.' , soruYaniti: false),
    Soru(soruMetni: 'Marvel Yenilmezler in son filmi Sonsuzluk Savaşı dır.', soruYaniti: false),
    Soru(soruMetni: 'Die Hard daki gökdelenin adı Nakatomi Plazadır', soruYaniti: true),
    Soru(soruMetni: 'Tüm zamanların en yüksek hasılat yapan R-reytingi filmi Joker dir.', soruYaniti: true),
    Soru(soruMetni: 'Steven Spielberg, En İyi Yönetmen dalında ilk Oscarını Schindlers Listesi için kazandı.', soruYaniti: true),
    Soru(soruMetni: 'Guardians of the Galaxynin açılış jeneriğinde Redbone dan "Come and Get Your Love" çalar.', soruYaniti: true),
    Soru(soruMetni: 'Kill Bill den Uma Thurman ın “The Bride” karakterinin gerçek adı Bella Swan dır.', soruYaniti: false),
    Soru(soruMetni:' Luke un ana gezegeni Tatooine in Yıldız Savaşları nda 3 tane günes vardır.' , soruYaniti: false),];
  int mevcutSoru = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                soruBankasi[mevcutSoru].soruMetni,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 5,
          spacing: 5,
          direction: Axis.vertical,
          children: secimler ,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              soruBankasi[mevcutSoru].soruYaniti ==  false
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);

                              mevcutSoru++;
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                              soruBankasi[mevcutSoru].soruYaniti ==  true
                                  ? secimler.add(kDogruIconu)
                                  : secimler.add(kYanlisIconu);

                              mevcutSoru++;
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

class Soru {
  String soruMetni;
  bool soruYaniti;

  Soru ({@required this.soruMetni,@required this.soruYaniti});

}