import 'package:final_project_2023/nama_tps.dart';
import 'package:final_project_2023/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// untuk menampilkan lokasi dan nama tps
class TpsSekitar extends StatefulWidget {
  const TpsSekitar({Key? key}) : super(key: key);

  @override
  _TpsSekitarState createState() => _TpsSekitarState();
}

class _TpsSekitarState extends State<TpsSekitar> {
  UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: ((context) {
            return IconButton(
                onPressed: () {
                  userController.tps();
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                ));
          })),
          centerTitle: true,
          title: const Text(
            'TPS Sekitar',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 39, 118, 41),
        ),
        body: ListView(
          children: const [
            NamaTps(
                nmtempat: 'Tempat Pembuangan Sampah Bama Raya',
                nmjl:
                    'Jl. Bama Raya, Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/1a.jpeg',
                image2: 'assets/1b.jpeg'),
            NamaTps(
                nmtempat: 'TPS',
                nmjl:
                    'Langkai, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/2a.jpeg',
                image2: 'assets/2b.jpeg'),
            NamaTps(
                nmtempat: 'TPS Baban',
                nmjl:
                    'Jl. Baban No.37, Menteng, Kec. Jekan Raya, Kota Palangka Raya, Kalimantan Tengah 73111',
                image1: 'assets/3a.jpeg',
                image2: 'assets/3b.jpeg'),
            NamaTps(
                nmtempat: 'TPS Metos',
                nmjl:
                    'Menteng, Kec. Jekan Raya, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/4a.jpeg',
                image2: 'assets/4b.jpeg'),
            NamaTps(
                nmtempat: 'TPS',
                nmjl:
                    'Jalan Krakatau, Palangka, Jekan Raya, Palangka, Palangkaraya, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/5a.jpeg',
                image2: 'assets/5b.jpeg'),
            NamaTps(
                nmtempat: 'Depo Sampah Sumbawa',
                nmjl:
                    'Jl. Sumbawa No.70, Pahandut, Kec. Pahandut, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/6a.jpeg',
                image2: 'assets/6b.jpeg'),
            NamaTps(
                nmtempat: 'Depo Mini Hasanudin',
                nmjl:
                    'Menteng, Kec. Jekan Raya, Kota Palangka Raya, Kalimantan Tengah 74874',
                image1: 'assets/7a.jpeg',
                image2: 'assets/7b.jpeg'),
            NamaTps(
                nmtempat: 'TPA Pal 14 Kota Palangka Raya',
                nmjl:
                    'Bukit Tunggal, Kec. Jekan Raya, Kota Palangka Raya, Kalimantan Tengah 73113',
                image1: 'assets/8a.jpeg',
                image2: 'assets/8b.jpeg')
          ],
        ));
  }
}
