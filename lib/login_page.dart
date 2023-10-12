import 'package:flutter/material.dart'; /// untuk pembuatan antarmuka pengguna (UI) di Flutter.
import 'package:get/get.dart'; /// untuk manajemen state dan navigasi di Flutter
import 'user_controller.dart'; /// Berkas yang mungkin berisi definisi UserController atau logika pengontrol pengguna.

/// untuk menampilkan halaman login
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/log.png'))),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                /// header Login
                'Login',
                style: TextStyle(
                    height: 2.5,
                    color: Color.fromARGB(255, 39, 118, 41),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),

            /// untuk menampilkan dan mengisi email
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 201, 247, 150),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 39, 118, 41),
                        fontWeight: FontWeight.bold)),
                onSaved: (newValue) {
                  if (newValue != null) {
                    _email = newValue;
                  }
                },
              ),
            ),

            /// untuk mengisi password dari email yang telah dimasukkan
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(255, 201, 247, 150),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 39, 118, 41),
                        fontWeight: FontWeight.bold)),
                onSaved: (newValue) {
                  if (newValue != null) {
                    _password = newValue;
                  }
                },
                obscureText: true,
              ),
            ),

            /// ketika email dan password telah diisi, button login akan memindahkan halaman ke main page
            /// jika email dan password salah maka akan ada prompt error data yang dimasukkan salah
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: OutlinedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  userController.login(_email, _password);
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 39, 118, 41), width: 3),
                    shape: const StadiumBorder()),
                child: const Text('Login',
                    style: TextStyle(
                        color: Color.fromARGB(255, 39, 118, 41),
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
