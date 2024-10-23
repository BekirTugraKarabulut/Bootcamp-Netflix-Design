import 'package:flutter/material.dart';

class Detaysayfasi extends StatefulWidget {
  const Detaysayfasi({super.key});

  @override
  State<Detaysayfasi> createState() => _DetaysayfasiState();
}

class _DetaysayfasiState extends State<Detaysayfasi> {
  @override
  Widget build(BuildContext context) {

    int secilenIndeks = 2;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5 , right: 5),
            child: Row(
              children: [
                  Image.asset("resimler/kingsmanGizliServis.png" ,width: 380,)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Kingsman: Gizli Servis" , style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("2014",style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.zero)
                ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Text("18+",style: TextStyle(color: Colors.white),),
                    )),
              ),
              Text("\t\t\t2 sa. 9 dk.",style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.zero)
                ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Text("HD" , style: TextStyle(color: Colors.black),),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 20),
            child: Row(
              children: [
                Container(decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.zero)
                ),
                    child: Image.asset("resimler/like.png" , width: 25,height: 25, color: Colors.white,)),
                    Text("\tÇok Beğenildi" , style: TextStyle(color: Colors.white , fontSize: 15),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5 ,right: 5 , top: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Container(decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Icon(Icons.play_arrow),
                        ),
                        Text("Oynat")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Container(decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Icon(Icons.download_rounded , color: Colors.white,),
                        ),
                        Text("İndir" , style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5 , top: 15),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Seçkin bir gizli ajan grubunun şeytani bir teknoloji dehasının peşine düştüğü bu casusluk temalı macerada Colin Firth, Taron Egerton ve Micheal Caine başrolleri paylaşıyor.\n" , style: TextStyle(color: Colors.white),),
                Text("Başroldekiler: Colin Firth, Samuel L. Jackson, Mark Strong", style: TextStyle(color: Colors.white),),
                Text("Yönetmen: Matthew Vaughn",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.add , color: Colors.white,),
                    Text("Listem" , style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    Image.asset("resimler/like.png" , height: 25,width: 25,color: Colors.white,),
                    Text("Puan Ver",style: TextStyle(color: Colors.white),)
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share,color: Colors.white,),
                    Text("Paylaş" , style: TextStyle(color: Colors.white),)
                  ],
                ),
              ],
            ),
          ),
        ],
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