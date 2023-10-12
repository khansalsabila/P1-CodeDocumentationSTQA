import 'package:firedart/auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'home_page.dart';
import 'start_page.dart';
import 'tps_sekitar.dart';

/// untuk menampilkan prompt jika email dan password salah
class UserController extends GetxController {
  void login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signIn(email, password);
      var user = await FirebaseAuth.instance.getUser();
      Get.offAll(() => const HomePage());
    } catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: INVALID_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Password salah",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: EMAIL_NOT_FOUND") {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "User belum terdaftar",
          duration: Duration(seconds: 2),
        ));
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Login Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }

  void logout() {
    FirebaseAuth.instance.signOut();
    Get.offAll(() => StartPage());
  }

  void home() {
    Get.offAll(() => TpsSekitar());
  }

  void tps() {
    Get.offAll(() => HomePage());
  }
}
