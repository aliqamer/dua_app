
class HadithObject {

  String _arabic;
  String _urdu;
  String _english;
  String _category;
  List<HadithDetail> _hadithDetail;

  //list of categories in arabic, urdu and english
  //each category will have list of hadiths
  //each hadith will have details with reference

  HadithObject(String c, String a, String u, String e, List<HadithDetail> hadithDetail) {
    _arabic = a;
    _urdu = u;
    _english = e;
    _category = c;
    _hadithDetail = hadithDetail;
  }
//String b, String ch, String v, String _hadith_a, String _hadith_u, String _hadith_e

  String get english => _english;

  String get urdu => _urdu;

  String get arabic => _arabic;

  String get category => _category;

  List<HadithDetail> get hadithDetail => _hadithDetail;


}

class HadithDetail {

  String _book;
  String _chapter;
  String _verse;
  String _haditha;
  String _hadithe;
  String _hadithu;

  HadithDetail(String b, String c, String v, String a, String u, String e){
    _book = b;
    _chapter = c;
    _verse = v;
    _haditha = a;
    _hadithu = u;
    _hadithe = e;
  }

  String get verse => _verse;

  String get chapter => _chapter+" , "+_verse;

  String get only_chapter => _chapter;

  String get book => _book;

  String get hadithu => _hadithu;

  String get hadithe => _hadithe;

  String get haditha => _haditha;

}