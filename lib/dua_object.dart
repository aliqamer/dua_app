
class DuaObject {

  String _arabic;
  String _urdu;
  String _english;
  String _chapter;
  String _verse;

  DuaObject(String a, String u, String e, String ch, String v) {
    _arabic = a;
    _urdu = u;
    _english = e;
    _chapter = ch;
    _verse = v;
  }

  String get verse => _verse;

  String get chapter => _chapter+" , "+_verse;

  String get english => _english;

  String get urdu => _urdu;

  String get arabic => _arabic;

  String get only_chapter => _chapter;

}