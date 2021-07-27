import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muszk/gonderiKarti.dart';
import 'package:muszk/profilSayfasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "Social Media App",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.purple.shade300,
              size: 32.0,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        duyuru("asozer seni takip etti.", "5 sn önce"),
                        duyuru("mabuaf senin gönderini beğendi.", "2 dk önce"),
                        duyuru("syuhay seni takip etti.", "1 gün önce"),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey.shade100, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset.fromDirection(0, 5.0),
                blurRadius: 5.0,
              )
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "skulvar",
                  "https://cdn.pixabay.com/photo/2017/12/31/15/56/portrait-3052641_960_720.jpg",
                  "Selçuk Kulvar",
                  "https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704_960_720.jpg",
                  "1.5K",
                  "257",
                  "9",
                ),
                profilKartiOlustur(
                  "tadams",
                  "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
                  "Tom Adams",
                  "https://cdn.pixabay.com/photo/2017/03/29/15/18/tianjin-2185510_960_720.jpg",
                  "12K",
                  "1876",
                  "77",
                ),
                profilKartiOlustur(
                  "jmay",
                  "https://cdn.pixabay.com/photo/2019/11/03/05/36/portrait-4597853_960_720.jpg",
                  "Jessica May",
                  "https://cdn.pixabay.com/photo/2017/09/16/16/08/lake-2755907_960_720.jpg",
                  "523",
                  "54",
                  "3",
                ),
                profilKartiOlustur(
                  "bsoyer",
                  "https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg",
                  "Belma Soyer",
                  "https://cdn.pixabay.com/photo/2016/11/29/09/29/beach-1868716_960_720.jpg",
                  "456",
                  "423",
                  "8",
                ),
                profilKartiOlustur(
                  "ydag",
                  "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg",
                  "Yıldız Dağ",
                  "https://cdn.pixabay.com/photo/2021/01/06/07/33/fisherman-5893401_960_720.jpg",
                  "2.1M",
                  "1.4K",
                  "289",
                ),
                profilKartiOlustur(
                  "nciftci",
                  "https://cdn.pixabay.com/photo/2015/09/18/11/46/man-945482_960_720.jpg",
                  "Nadir Çiftçi",
                  "https://cdn.pixabay.com/photo/2021/01/30/14/22/women-5963960_960_720.jpg",
                  "89",
                  "55",
                  "2",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2017/12/31/15/56/portrait-3052641_960_720.jpg",
            adSoyad: "Selçuk Kulvar",
            gecenSure: "5 dakika önce",
            aciklama: "Panpipe Müzisyen",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2021/07/02/03/19/panpipe-6380762_960_720.jpg",
          ),
          GonderiKarti(
            aciklama: "Keseli Kanguru",
            adSoyad: "Tom Adams",
            gecenSure: "1 saat önce",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2021/07/19/06/29/kangaroo-6477341_960_720.jpg",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
          ),
          GonderiKarti(
            aciklama: "Rufous Sinek Kuşu",
            adSoyad: "Belma Soyer",
            gecenSure: "1 hafta önce",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2021/07/18/17/11/rufous-6476117_960_720.jpg",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple.shade300,
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(
            gecenSure,
          ),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(
      String kullaniciAdi,
      String resimLinki,
      String adSoyad,
      String kapakResimLinki,
      String takipci,
      String takip,
      String paylasim) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                profilResimLinki: resimLinki,
                kullaniciAdi: kullaniciAdi,
                adSoyad: adSoyad,
                kapakResimLinki: kapakResimLinki,
                takipci: takipci,
                takip: takip,
                paylasim: paylasim,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(resimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
