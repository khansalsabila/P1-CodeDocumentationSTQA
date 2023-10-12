import 'package:firedart/auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'hive_store.dart';
import 'start_page.dart';
import 'token_adapter.dart';

const apiKey = "AIzaSyDazyO52aRtQE6C6JbVXblfSFxwmMMKP3Y";
const projectId = "cobaduluya-13fc5";

/// untuk menjalankan aplikasi
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(TokenAdapter());

  FirebaseAuth.initialize(apiKey, (await HiveStore.create()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}
