import 'package:flutter/material.dart';
import 'package:netflix_tasarim_projesi/anasayfa.dart';
import 'package:netflix_tasarim_projesi/kullanici.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({super.key});

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {

  var adKontrol = TextEditingController();
  var parolaKontrol = TextEditingController();

  var kisi = Kullanici(ad: "Tugra", parola: "123456", resim: "pp.png");

  bool ProgressKontrol = false;

  @override
  void initState() {
    super.initState();
    adKontrol.text = kisi.ad;
    parolaKontrol.text = kisi.parola;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset("resimler/netflix.png" , width: 80,height: 80,)
          ],
        ),
        actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset("resimler/dots.png" , color: Colors.grey, width: 25,height: 25,),
            )
        ],
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: adKontrol,
                        decoration: InputDecoration(hintText: "E-posta veya telefon numarası" , hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: parolaKontrol,
                        decoration: InputDecoration(hintText: "Parola" , hintStyle: TextStyle(color: Colors.white)),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: SizedBox(width: 365,height: 50,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              )
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(),backgroundColor: Colors.black),
                              onPressed: (){

                                setState(() {
                                  ProgressKontrol = true;
                                });

                                Future.delayed(Duration(seconds: 3),() {

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(kisi)));
                                  setState(() {
                                    ProgressKontrol = false;
                                  });

                                },);

                              }, child: Text("Oturum Aç",style: TextStyle(color: Colors.white),)),
                        ),
                      )),
                ),
              ],
            ),
                Visibility(
                  child: CircularProgressIndicator(),
                  visible: ProgressKontrol,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Yardım ister misiniz?\n" , style: TextStyle(color: Colors.grey),),
                      Text("Netflix'e katılmak ister misiniz? Şimdi kaydol.\n", style: TextStyle(color: Colors.grey),),
                      Text("Oturum açma işlemi, robot olmadığınızı kanıtlamak için Google reCAPTCHA ile korunuyor. Daha fazla bilgi alın.", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}