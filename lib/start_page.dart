import 'package:flutter/material.dart';/// untuk pembuatan antarmuka pengguna (UI) di Flutter.
import 'login_page.dart'; /// berisi implementasi dari halaman login (LoginPage).

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// background dari start page
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                /// header TPS Sekitar
                'TPS Sekitar',
                style: TextStyle(
                    height: 2.3,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),

            /// button Get Started akan memindahkan halaman ke bagian login page
            Container(
              padding: const EdgeInsets.all(15),
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginPage())));
                  },
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size(165, 50),
                      side: const BorderSide(color: Colors.white, width: 3),
                      shape: const StadiumBorder()),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
