
import 'package:dua/dua.dart';
import 'package:dua/dua_object.dart';

class QuranDua extends Dua {

  List<DuaObject> _duaList = [
    DuaObject(
        "أَعُوذُ بِٱللَّهِ أَنۡ أَكُونَ مِنَ ٱلۡجَـٰهِلِينَ",
        "میں الله کی پناہ مانگتا ہوں اس سے کہ جاہلوں میں سے ہوں",
        "I seek refuge in Allah from being among the ignorant", "سُوۡرَةُ البَقَرَة | The Cow", "v67"),
    DuaObject(
        "رَبَّنَا تَقَبَّلۡ مِنَّآ‌ۖ إِنَّكَ أَنتَ ٱلسَّمِيعُ ٱلۡعَلِيمُ وَتُبۡ عَلَيۡنَآ‌ۖ إِنَّكَ أَنتَ ٱلتَّوَّابُ ٱلرَّحِيمُ",
        "اے ہمارے رب ہم سے قبول کر بے شک تو ہی سننے والا جاننے والا ہے اور ہماری توبہ قبول فرما بے شک تو بڑا توبہ قبول کرنے والا نہایت رحم والا ہے",
        "Our Lord, accept [this] from us. Indeed You are the Hearing, the Knowing. Indeed, You are the Accepting of repentance, the Merciful", "سُوۡرَةُ البَقَرَة | The Cow", "v127-128"),
    DuaObject(
        "رَبَّنَآ ءَاتِنَا فِى ٱلدُّنۡيَا حَسَنَةً۬ وَفِى ٱلۡأَخِرَةِ حَسَنَةً۬ وَقِنَا عَذَابَ ٱلنَّارِ",
        "اے ہمارے رب ہمیں دنیا میں نیکی اور آخرت میں بھی نیکی دے اور ہمیں دوزخ کے عذاب سے بچا",
        "Our Lord, give us in this world [that which is] good and in the Hereafter [that which is] good and protect us from the punishment of the Fire", "سُوۡرَةُ البَقَرَة | The Cow", "v201"),
    DuaObject(
        "رَبَّنَآ أَفۡرِغۡ عَلَيۡنَا صَبۡرً۬ا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے رب ہمارے دلوں میں صبر ڈال دے اور ہمارے پاؤں جمائے رکھ اور اس کافر قوم پر ہماری مدد کر",
        "Our Lord, pour upon us patience and plant firmly our feet and give us victory over the disbelieving people",  "سُوۡرَةُ البَقَرَة | The Cow", "v250"),
    DuaObject(
        "رَبَّنَا لَا تُؤَاخِذۡنَآ إِن نَّسِينَآ أَوۡ أَخۡطَأۡنَا‌ۚ رَبَّنَا وَلَا تَحۡمِلۡ عَلَيۡنَآ إِصۡرً۬ا كَمَا حَمَلۡتَهُ, عَلَى ٱلَّذِينَ مِن قَبۡلِنَا‌ۚ رَبَّنَا وَلَا تُحَمِّلۡنَا مَا لَا طَاقَةَ لَنَا بِهِ, وَٱعۡفُ عَنَّا وَٱغۡفِرۡ لَنَا وَٱرۡحَمۡنَآ‌ۚ أَنتَ مَوۡلَٮٰنَا فَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے رب ہمارے! اگر ہم بھول جائیں یا غلطی کریں تو ہمیں نہ پکڑ اے رب ہمارے! اور ہم پر بھاری بوجھ نہ رکھ جیسا تو نے ہم سے پہلے لوگوں پر رکھا تھا, اے رب ہمارے! اور ہم سے وہ بوجھ نہ اٹھوا جس کی ہمیں طاقت نہیں اور ہمیں معاف کر دے اور ہمیں بخش دے, اور ہم پر رحم کر تو ہی ہمارا کارساز ہے کافروں کے مقابلہ میں تو ہماری مدد کر",
        "Our Lord, do not impose blame upon us if we have forgotten or erred. Our Lord, and lay not upon us a burden like that which You laid upon those before us. Our Lord, and burden us not with that which we have no ability to bear. And pardon us; and forgive us; and have mercy upon us. You are our protector, so give us victory over the disbelieving people", "سُوۡرَةُ البَقَرَة | The Cow", "v286"),
    DuaObject(
        "رَبَّنَا لَا تُزِغۡ قُلُوبَنَا بَعۡدَ إِذۡ هَدَيۡتَنَا وَهَبۡ لَنَا مِن لَّدُنكَ رَحۡمَةً‌ۚ إِنَّكَ أَنتَ ٱلۡوَهَّابُ",
        "اے رب ہمارے! جب تو ہم کو ہدایت کر چکا تو ہمارے دلوں کا نہ پھیر اور اپنے ہاں سے ہمیں رحمت عطافرما بے شک تو بہت زیادہ دینے والا ہے",
        "Our Lord, let not our hearts deviate after You have guided us and grant us from Yourself mercy. Indeed, You are the Bestower", "سُوۡرَةُ آل عِمرَان | Family Of Imran", "8"),
    DuaObject(
        "رَبَّنَآ إِنَّنَآ ءَامَنَّا فَٱغۡفِرۡ لَنَا ذُنُوبَنَا وَقِنَا عَذَابَ ٱلنَّارَِ",
        "اے رب ہمارے! ہم ایمان لائے ہیں سو ہمیں ہمارے گناہ بخش دے اور ہمیں دوزخ کے عذاب سے بچا لے",
        "Our Lord, indeed we have believed, so forgive us our sins and protect us from the punishment of the Fire", "سُوۡرَةُ آل عِمرَان | Family Of Imran", "v16"),
    DuaObject(
        "رَبَّنَآ ءَامَنَّا بِمَآ أَنزَلۡتَ وَٱتَّبَعۡنَا ٱلرَّسُولَ فَٱڪۡتُبۡنَا مَعَ ٱلشَّـٰهِدِينََ",
        "ااے رب ہمارے! ہم اس چیز پر ایمان لائے جو تو نے نازل کی اور ہم رسول کے تابعدار ہوئے سو تو ہمیں گواہی دینے والوں میں لکھ لے",
        "Our Lord, we have believed in what You revealed and have followed the messenger Jesus, so register us among the witnesses [to truth]", "سُوۡرَةُ آل عِمرَان | Family Of Imran", "v53"),
    DuaObject(
        "رَبَّنَا ٱغۡفِرۡ لَنَا ذُنُوبَنَا وَإِسۡرَافَنَا فِىٓ أَمۡرِنَا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے ہمارے رب ہمارے گناہ بخش دے اور جو ہمارے کام میں ہم سے زیادتی ہوئی ہے او رہمارے قدم ثابت رکھ اور کافروں کی قوم پر ہمیں مدد دے",
        "Our Lord, forgive us our sins and the excess [committed] in our affairs and plant firmly our feet and give us victory over the disbelieving people", "سُوۡرَةُ آل عِمرَان | Family Of Imran", "v147"),
    DuaObject(
        "رَبَّنَا ظَلَمۡنَآ أَنفُسَنَا وَإِن لَّمۡ تَغۡفِرۡ لَنَا وَتَرۡحَمۡنَا لَنَكُونَنَّ مِنَ ٱلۡخَـٰسِرِينَ",
        "اے رب ہمارے ہم نے اپنی جانوں پر ظلم کیا اور اگر تو ہمیں نہ بخشے گا اور ہم پر رحم نہ کرے گا تو ہم ضرور تباہ ہوجائیں گے",
        "Our Lord, we have wronged ourselves, and if You do not forgive us and have mercy upon us, we will surely be among the losers", "سُوۡرَةُ الاٴعرَاف | The Heights", "v23"),
    DuaObject(
        "رَبَّنَآ أَفۡرِغۡ عَلَيۡنَا صَبۡرً۬ا وَتَوَفَّنَا مُسۡلِمِينَ",
        "اے ہمارے رب ہمارے اوپر صبر ڈال اورہمیں مسلمان کر کے موت دے",
        "Our Lord, pour upon us patience and let us die as Muslims [in submission to You]","سُوۡرَةُ الاٴعرَاف | The Heights ","v126"),
    DuaObject(
        "حَسۡبِىَ ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ‌ۖ عَلَيۡهِ تَوَڪَّلۡتُ‌ۖ وَهُوَ رَبُّ ٱلۡعَرۡشِ ٱلۡعَظِيمِ",
        "مجھے الله ہی کافی ہے اس کے سوا اور کوئی معبود نہیں اسی پر میں بھروسہ کرتا ہوں اور وہی عرش عظیم کا مالک ہے",
        "Sufficient for me is Allah ; there is no deity except Him. On Him I have relied, and He is the Lord of the Great Throne", "The Repentance | سُوۡرَةُ التّوبَة", "v129"),
    DuaObject(
        "رَبَّنَا لَا تَجۡعَلۡنَا فِتۡنَةً۬ لِّلۡقَوۡمِ ٱلظَّـٰلِمِينَ وَنَجِّنَا بِرَحۡمَتِكَ مِنَ ٱلۡقَوۡمِ ٱلۡكَـٰفِرِينَِ",
        "اے رب ہمارے ہم پر اس ظالم قوم کا زور نہ آزما اور ہمیں مہربانی فرما کر ان کافروں سے چھڑا دے",
        "Our Lord, make us not [objects of] trial for the wrongdoing people And save us by Your mercy from the disbelieving people", "Jonah | سُوۡرَةُ یُونس", "v85-86"),
    DuaObject(
        "رَبِّ إِنِّىٓ أَعُوذُ بِكَ أَنۡ أَسۡـَٔلَكَ مَا لَيۡسَ لِى بِهِۦ عِلۡمٌ۬‌ۖ وَإِلَّا تَغۡفِرۡ لِى وَتَرۡحَمۡنِىٓ أَڪُن مِّنَ ٱلۡخَـٰسِرِينَِ",
        "اے رب میں تیری پناہ لیتا ہوں اس بات سے کہ تجھ سے وہ بات پوچھوں جو مجھے معلوم نہیں اور اگر تو نے مجھے نہ بخشا اورمجھ پر رحم نہ کیا تو میں نقصان والوں میں ہو جاؤں گا",
        "My Lord, I seek refuge in You from asking that of which I have no knowledge. And unless You forgive me and have mercy upon me, I will be among the losers", "Hud | سُوۡرَةُ هُود", "v47"),

  ];

  List<DuaObject> getDuaList() {
    return _duaList;
  }
}