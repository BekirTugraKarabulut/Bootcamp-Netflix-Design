import 'package:flutter/material.dart';
import 'package:netflix_tasarim_projesi/aksiyonFilmler.dart';
import 'package:netflix_tasarim_projesi/detaySayfasi.dart';
import 'package:netflix_tasarim_projesi/filmler.dart';
import 'package:netflix_tasarim_projesi/giseRekorlari.dart';
import 'package:netflix_tasarim_projesi/kullanici.dart';
import 'package:netflix_tasarim_projesi/netflixOzel.dart';
import 'package:netflix_tasarim_projesi/odulluFilmler.dart';

class Anasayfa extends StatefulWidget {

  Kullanici kullanici;
  Anasayfa(this.kullanici);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int secilenIndeks = 2;

  Future<List<Filmler>> filmlerYukle() async{
      var onerilenListe = <Filmler>[];
      var ofilm1 = Filmler(ad: "Aile Arasında", tarih: "2015", sure: "125 Dk", resimAdi: "ailearasinda.png");
      var ofilm2 = Filmler(ad: "Tam Bir Centilmen", tarih: "2015", sure: "125 Dk", resimAdi: "tambircentilmen.png");
      var ofilm3 = Filmler(ad: "Ölümlü Dünya", tarih: "2014", sure: "148 Dk", resimAdi: "olumludunya.png");
      var ofilm4 = Filmler(ad: "Mutluyuz", tarih: "2018", sure: "135 Dk", resimAdi: "mutluyuz.png");
      var ofilm5 = Filmler(ad: "Bursa Bülbülü", tarih: "2020", sure: "160 Dk", resimAdi: "bursabulbulu.png");
      var ofilm6 = Filmler(ad: "Erdal ile Ece", tarih: "2023", sure: "140 Dk", resimAdi: "erdalileece.png");
      onerilenListe.add(ofilm1);
      onerilenListe.add(ofilm2);
      onerilenListe.add(ofilm3);
      onerilenListe.add(ofilm4);
      onerilenListe.add(ofilm5);
      onerilenListe.add(ofilm6);
      return onerilenListe;
  }
  
  Future<List<Aksiyonfilmler>> aksiyonFilmYukle() async{
    var aksiyonListesi = <Aksiyonfilmler>[];
    var afilm1 = Aksiyonfilmler(ad: "Suicide Squad", tarih: "2015", sure: "145 dk", resimAdi: "suicide.png");
    var afilm2 = Aksiyonfilmler(ad: "Kingsman", tarih: "2016", sure: "150 dk", resimAdi: "kingsmanaltın.png");
    var afilm3 = Aksiyonfilmler(ad: "Venom", tarih: "2018", sure: "145 dk", resimAdi: "venom.png");
    var afilm4 = Aksiyonfilmler(ad: "Kingsman2", tarih: "2019", sure: "160 dk", resimAdi: "kingsman.png");
    var afilm5 = Aksiyonfilmler(ad: "Asi 13", tarih: "2016", sure: "140 dk", resimAdi: "asi13.png");
    aksiyonListesi.add(afilm1);
    aksiyonListesi.add(afilm2);
    aksiyonListesi.add(afilm3);
    aksiyonListesi.add(afilm4);
    aksiyonListesi.add(afilm5);
    return aksiyonListesi;
  }

  Future<List<Odullufilmler>> odulluFilmYukle() async{
    var odulluListesi = <Odullufilmler>[];
    var ffilm1 = Odullufilmler(ad: "Kuru Otlar Üstünde", tarih: "2018", sure: "155 dk", resimAdi: "kuruotlar.png");
    var ffilm2 = Odullufilmler(ad: "Titanic", tarih: "2009", sure: "156 dk", resimAdi: "titanic.png");
    var ffilm3 = Odullufilmler(ad: "The Platform", tarih: "2015", sure: "180 dk", resimAdi: "platform.png");
    var ffilm4 = Odullufilmler(ad: "Suicide", tarih: "2015", sure: "189 dk", resimAdi: "suicide.png");
    odulluListesi.add(ffilm1);
    odulluListesi.add(ffilm2);
    odulluListesi.add(ffilm3);
    odulluListesi.add(ffilm4);
    return odulluListesi;
  }

  Future<List<Netflixozel>> nextflixOzel() async{
    var netflixOzel = <Netflixozel>[];
    var ozelfilm1 = Netflixozel(ad: "Damsel", tarih: "2015", sure: "180 dk", resimAdi: "damsel.png");
    var ozelfilm2 = Netflixozel(ad: "Do Not Disurtb", tarih: "2015", sure: "180 dk", resimAdi: "berlin.png");
    var ozelfilm3 = Netflixozel(ad: "Berlin", tarih: "2020", sure: "180 dk", resimAdi: "nowhere.png");
    var ozelfilm4 = Netflixozel(ad: "Nowhere", tarih: "2023", sure: "180 dk", resimAdi: "doNotDisturb.png");
    netflixOzel.add(ozelfilm1);
    netflixOzel.add(ozelfilm2);
    netflixOzel.add(ozelfilm3);
    netflixOzel.add(ozelfilm4);
    return netflixOzel;
  }

  Future<List<Giserekorlari>> rekorFilmlerYukle() async{
    var rekorListesi = <Giserekorlari>[];
    var rekorfilm1 = Giserekorlari(ad: "Alacakaranlık", tarih: "2023", sure: "150 dk", resimAdi: "alacakaranlik.png");
    var rekorfilm2 = Giserekorlari(ad: "Platform 2", tarih: "2024", sure: "175 dk", resimAdi: "platform2.png");
    var rekorfilm3 = Giserekorlari(ad: "Kingsman2", tarih: "2018", sure: "150 dk", resimAdi: "kingsman.png");
    var rekorfilm4 = Giserekorlari(ad: "Titanic", tarih: "2009", sure: "150 dk", resimAdi: "titanic.png");
    var rekorfilm5 = Giserekorlari(ad: "Suicide", tarih: "2023", sure: "150 dk", resimAdi: "suicide.png");
    var rekorfilm6 = Giserekorlari(ad: "Venom", tarih: "2023", sure: "150 dk", resimAdi: "venom.png");
    rekorListesi.add(rekorfilm1);
    rekorListesi.add(rekorfilm2);
    rekorListesi.add(rekorfilm3);
    rekorListesi.add(rekorfilm4);
    rekorListesi.add(rekorfilm5);
    rekorListesi.add(rekorfilm6);
    return rekorListesi;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Filmler" , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_rounded , color: Colors.white,)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.download_rounded , size: 30,color: Colors.white,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search , size: 30,color: Colors.white,),
        ),
      ],
      backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 90),
                       child: Text("Hoş Geldin ${widget.kullanici.ad}" , style: TextStyle(fontSize: 20 , color: Colors.white),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 100),
                       child: Image.asset("resimler/netflixAnaEkran.png" , height: 30, width: 30,),
                     )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Türk Filmleri" , style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  FutureBuilder<List<Filmler>>(
                    future: filmlerYukle(),
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                          var onerilenListe = snapshot.data;
                          return SizedBox(
                            height: 208,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: onerilenListe!.length,
                              itemBuilder: (context, index) {
                                var onerilen_film = onerilenListe[index];
                                return SizedBox(
                                  width: 150,
                                  child: Card(
                                    color: Colors.black,
                                    child: Column(
                                      children: [
                                        Image.asset("resimler/${onerilen_film.resimAdi}" , height: 200, width: 200,)
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                      }else{
                        return const Center();
                      }
                    },
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10 , left: 10),
                            child: Text("Aksiyon Filmleri" , style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Detaysayfasi()));
                        },
                        child: FutureBuilder<List<Aksiyonfilmler>>(
                          future: aksiyonFilmYukle(),
                          builder: (context, snapshot) {
                            if(snapshot.hasData){
                               var aksiyonListesi = snapshot.data;
                               return SizedBox(
                                 height: 208,
                                 child: ListView.builder(
                                   scrollDirection: Axis.horizontal,
                                   itemCount: aksiyonListesi!.length,
                                   itemBuilder: (context, index) {
                                     var aksiyonFilm = aksiyonListesi[index];
                                     return SizedBox(
                                       width: 150,
                                       child: Card(
                                         color: Colors.black,
                                         child: Column(
                                           children: [
                                             Image.asset("resimler/${aksiyonFilm.resimAdi}" , height: 200, width: 200,)
                                           ],
                                         ),
                                       ),
                                     );
                                   },
                                 ),
                               );
                            }else{
                              return const Center();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Ödüllü Filmler" , style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                      FutureBuilder<List<Odullufilmler>>(
                        future: odulluFilmYukle(),
                        builder: (context, snapshot) {
                          if(snapshot.hasData){
                            var odulluListesi = snapshot.data;
                            return SizedBox(
                              height: 208,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: odulluListesi!.length,
                                itemBuilder: (context, index) {
                                  var odulluFilm = odulluListesi[index];
                                  return SizedBox(
                                    width: 150,
                                    child: Card(
                                      color: Colors.black,
                                      child: Column(
                                        children: [
                                          Image.asset("resimler/${odulluFilm.resimAdi}" , height: 200, width: 200,)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }else{
                            return const Center();
                          }
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Sadece Netflix'te" , style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                      FutureBuilder<List<Netflixozel>>(
                        future: nextflixOzel(),
                        builder: (context, snapshot) {
                          if(snapshot.hasData){
                            var netflixOzel = snapshot.data;
                            return SizedBox(
                              height: 300,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: netflixOzel!.length,
                                itemBuilder: (context, index) {
                                  var ozelFilm = netflixOzel[index];
                                  return SizedBox(
                                    width: 160,
                                    child: Card(
                                      color: Colors.black,
                                      child: Column(
                                        children: [
                                          Image.asset("resimler/${ozelFilm.resimAdi}" , height: 292,width: 200,)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }else{
                            return const Center();
                          }
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Gişe Rekortmenleri" , style: TextStyle(fontSize: 20 , color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                      FutureBuilder<List<Giserekorlari>>(
                        future: rekorFilmlerYukle(),
                        builder: (context, snapshot) {
                          if(snapshot.hasData){
                            var rekorListesi = snapshot.data;
                            return SizedBox(
                              height: 208,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: rekorListesi!.length,
                                itemBuilder: (context, index) {
                                  var rekorFilmler = rekorListesi[index];
                                  return SizedBox(
                                    width: 150,
                                    child: Card(
                                      color: Colors.black,
                                      child: Column(
                                        children: [
                                          Image.asset("resimler/${rekorFilmler.resimAdi}" , width: 200, height: 200,)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          }else{
                            return const Column();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Ana Sayfa",backgroundColor: Colors.white,),
          BottomNavigationBarItem(icon: Image.asset("resimler/game.png",height: 30,),label: "Oyunlar",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Image.asset("resimler/navigasyonbar.png",height: 30),label: "Yeni ve Popüler",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Image.asset("resimler/pp.png",height: 30,),label: "Benim Netflix'im",backgroundColor: Colors.black),
        ],
        unselectedFontSize: 10,
        selectedFontSize: 10,
        showUnselectedLabels: true,
        currentIndex: secilenIndeks,
      ),
    );
  }
}