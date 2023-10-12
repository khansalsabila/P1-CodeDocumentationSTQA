import 'package:firedart/firedart.dart'; /// untuk berinteraksi dengan Firebase Realtime Database.
import 'package:hive_flutter/hive_flutter.dart'; /// untuk penyimpanan persisten di Flutter menggunakan Hive.

/// untuk generate token untuk membuka aplikasi melalui login
class TokenAdapter extends TypeAdapter<Token> {
  @override
  final typeId = 42;

/// Metode write digunakan untuk menulis (serialize) objek Token ke dalam format yang dapat disimpan, dalam hal ini, ke dalam format peta (map).
  @override
  void write(BinaryWriter writer, Token token) =>
      writer.writeMap(token.toMap());

/// Metode read digunakan untuk membaca (deserialize) objek Token dari penyimpanan dan mengembalikan objek Token. Dalam hal ini, membaca peta dari penyimpanan dan membuat objek Token dari peta tersebut.
  @override
  Token read(BinaryReader reader) =>
      Token.fromMap(reader.readMap().map<String, dynamic>(
          (key, value) => MapEntry<String, dynamic>(key, value)));
}
