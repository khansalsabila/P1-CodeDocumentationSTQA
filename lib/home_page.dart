import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'user_controller.dart';

/// untuk menampilkan fitur tps sekitar
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: ((context) {
          return IconButton(
              onPressed: () {
                userController.logout();
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 30,
              ));
        })),

        /// header menu utama
        centerTitle: true,
        title: const Text(
          'Menu Utama',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 118, 41),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Column(
              children: [
                /// untuk menampilkan fitur maps di tps sekitar saat dipencet
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 39, 118, 41)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                    onPressed: () {
                      userController.home();
                    },
                    child: const ImageIcon(
                      AssetImage('assets/tps.png'),
                      size: 40,
                    )),
                const Text(
                  'TPS Sekitar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
