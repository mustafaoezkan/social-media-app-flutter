import 'package:flutter/material.dart';
import 'package:muszk/gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String adSoyad;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;
  final String takipci;
  final String takip;
  final String paylasim;

  const ProfilSayfasi({
    Key? key,
    required this.adSoyad,
    required this.kullaniciAdi,
    required this.kapakResimLinki,
    required this.profilResimLinki,
    required this.takipci,
    required this.takip,
    required this.paylasim,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230.0,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(kapakResimLinki),
                    fit: BoxFit.cover,
                  )),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(profilResimLinki),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        adSoyad,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey.shade200,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Takip Et",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi", takipci),
                  sayac("Takip", takip),
                  sayac("Paylaşım", paylasim),
                ],
              ),
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
          ],
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
