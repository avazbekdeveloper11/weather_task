import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  HiveService._();

  static Future<bool> writeMap(
      {required String boxName, required Map data}) async {
    try {
      Box<List> box = await Hive.openBox(boxName);
      List langs = [];
      langs.addAll(box.values);
      langs.add(data);
      box.put(boxName, langs);
      return true;
    } catch (e) {
      debugPrint("========== { $e } ==========");
      return false;
    }
  }

  static Future<bool> writeString(
      {required String boxName, required String text}) async {
    try {
      Box<String> box = await Hive.openBox(boxName);
      box.put(boxName, text);
      return true;
    } catch (e) {
      debugPrint("========== { $e } ==========");
      return false;
    }
  }

  static String readString({required String boxName}) {
    try {
      Box<String> box = Hive.box(boxName);
      String? data = box.get(boxName);
      debugPrint(data);
      return data ?? "";
    } catch (e) {
      debugPrint("========== { $e } ==========");
      return '';
    }
  }
}
