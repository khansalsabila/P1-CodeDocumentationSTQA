import 'package:firedart/firedart.dart'; ///menyediakan dukungan untuk bekerja dengan Firebase, termasuk otentikasi (TokenStore adalah bagian dari firedart).
import 'package:hive_flutter/hive_flutter.dart'; /// untuk manajemen database lokal menggunakan Hive, yang merupakan database NoSQL ringan.

/// untuk menyimpan data projek di device
class HiveStore extends TokenStore {
  final Box _box;
  HiveStore._internal(this._box);
  static const keyToken = "auth_token";

  static Future<HiveStore> create() async {
    var box = await Hive.openBox("auth_store",
        compactionStrategy: (entries, deletedEntries) => deletedEntries > 50);
    return HiveStore._internal(box);
  }

/// Metode ini menghapus token dari penyimpanan lokal dengan menggunakan _box.delete(keyToken).
  @override
  void delete() {
    _box.delete(keyToken);
  }

/// Metode ini membaca token dari penyimpanan lokal dengan menggunakan _box.get(keyToken) dan mengembalikannya.
  @override
  Token? read() {
    return _box.get(keyToken);
  }

/// Metode ini menulis token ke penyimpanan lokal dengan menggunakan _box.put(keyToken, token).
  @override
  void write(Token? token) {
    _box.put(keyToken, token);
  }
}
