
import 'package:dua/dua_object.dart';
import 'package:dua/quran_dua.dart';

class DuaFactory {

  QuranDua quranDua = QuranDua();

  List<DuaObject> getDuaByType(String type) {

    if(type.toLowerCase() == "quran") {
      return quranDua.getDuaList();
    }
  }

}