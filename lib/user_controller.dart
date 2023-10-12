import 'package:firedart/auth/firebase_auth.dart'; /// Paket Firedart untuk otentikasi dengan Firebase.
import 'package:get/get.dart'; /// digunakan untuk manajemen status dan navigasi.
import 'home_page.dart'; /// Berkas yang berisi implementasi halaman utama (HomePage).
import 'start_page.dart'; ///Berkas yang berisi implementasi halaman awal (StartPage).
import 'tps_sekitar.dart'; /// Berkas yang berisi implementasi halaman TPS sekitar (TpsSekitar).

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

///Metode logout digunakan untuk keluar (logout) pengguna. Setelah logout, pengguna diarahkan ke halaman awal (StartPage).
  void logout() {
    FirebaseAuth.instance.signOut();
    Get.offAll(() => StartPage());
  }

/// Metode home digunakan untuk navigasi ke halaman TPS sekitar (TpsSekitar).
  void home() {
    Get.offAll(() => TpsSekitar());
  }

/// Metode tps digunakan untuk navigasi ke halaman utama (HomePage).
  void tps() {
    Get.offAll(() => HomePage());
  }
}
