
import 'package:dua/dua.dart';
import 'package:dua/dua_object.dart';

class QuranDua extends Dua {

  List<DuaObject> _duaList = [
    DuaObject(
        "أَعُوذُ بِٱللَّهِ أَنۡ أَكُونَ مِنَ ٱلۡجَـٰهِلِينَ",
        "میں الله کی پناہ مانگتا ہوں اس سے کہ جاہلوں میں سے ہوں",
        "I seek refuge in Allah from being among the ignorant", "2 The Cow | سُوۡرَةُ البَقَرَة", "v67"),
    DuaObject(
        "رَبَّنَا تَقَبَّلۡ مِنَّآ‌ۖ إِنَّكَ أَنتَ ٱلسَّمِيعُ ٱلۡعَلِيمُ وَتُبۡ عَلَيۡنَآ‌ۖ إِنَّكَ أَنتَ ٱلتَّوَّابُ ٱلرَّحِيمُ",
        "اے ہمارے رب ہم سے قبول کر بے شک تو ہی سننے والا جاننے والا ہے اور ہماری توبہ قبول فرما بے شک تو بڑا توبہ قبول کرنے والا نہایت رحم والا ہے",
        "Our Lord, accept [this] from us. Indeed You are the Hearing, the Knowing. Indeed, You are the Accepting of repentance, the Merciful", "2 The Cow | سُوۡرَةُ البَقَرَة", "v127-128"),
    DuaObject(
        "رَبَّنَآ ءَاتِنَا فِى ٱلدُّنۡيَا حَسَنَةً۬ وَفِى ٱلۡأَخِرَةِ حَسَنَةً۬ وَقِنَا عَذَابَ ٱلنَّارِ",
        "اے ہمارے رب ہمیں دنیا میں نیکی اور آخرت میں بھی نیکی دے اور ہمیں دوزخ کے عذاب سے بچا",
        "Our Lord, give us in this world [that which is] good and in the Hereafter [that which is] good and protect us from the punishment of the Fire", "2 The Cow | سُوۡرَةُ البَقَرَة", "v201"),
    DuaObject(
        "رَبَّنَآ أَفۡرِغۡ عَلَيۡنَا صَبۡرً۬ا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے رب ہمارے دلوں میں صبر ڈال دے اور ہمارے پاؤں جمائے رکھ اور اس کافر قوم پر ہماری مدد کر",
        "Our Lord, pour upon us patience and plant firmly our feet and give us victory over the disbelieving people",  "2 The Cow | سُوۡرَةُ البَقَرَة", "v250"),
    DuaObject(
        "رَبَّنَا لَا تُؤَاخِذۡنَآ إِن نَّسِينَآ أَوۡ أَخۡطَأۡنَا‌ۚ رَبَّنَا وَلَا تَحۡمِلۡ عَلَيۡنَآ إِصۡرً۬ا كَمَا حَمَلۡتَهُ, عَلَى ٱلَّذِينَ مِن قَبۡلِنَا‌ۚ رَبَّنَا وَلَا تُحَمِّلۡنَا مَا لَا طَاقَةَ لَنَا بِهِ, وَٱعۡفُ عَنَّا وَٱغۡفِرۡ لَنَا وَٱرۡحَمۡنَآ‌ۚ أَنتَ مَوۡلَٮٰنَا فَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے رب ہمارے! اگر ہم بھول جائیں یا غلطی کریں تو ہمیں نہ پکڑ اے رب ہمارے! اور ہم پر بھاری بوجھ نہ رکھ جیسا تو نے ہم سے پہلے لوگوں پر رکھا تھا, اے رب ہمارے! اور ہم سے وہ بوجھ نہ اٹھوا جس کی ہمیں طاقت نہیں اور ہمیں معاف کر دے اور ہمیں بخش دے, اور ہم پر رحم کر تو ہی ہمارا کارساز ہے کافروں کے مقابلہ میں تو ہماری مدد کر",
        "Our Lord, do not impose blame upon us if we have forgotten or erred. Our Lord, and lay not upon us a burden like that which You laid upon those before us. Our Lord, and burden us not with that which we have no ability to bear. And pardon us; and forgive us; and have mercy upon us. You are our protector, so give us victory over the disbelieving people", "2 The Cow | سُوۡرَةُ البَقَرَة", "v286"),
    DuaObject(
        "رَبَّنَا لَا تُزِغۡ قُلُوبَنَا بَعۡدَ إِذۡ هَدَيۡتَنَا وَهَبۡ لَنَا مِن لَّدُنكَ رَحۡمَةً‌ۚ إِنَّكَ أَنتَ ٱلۡوَهَّابُ",
        "اے رب ہمارے! جب تو ہم کو ہدایت کر چکا تو ہمارے دلوں کا نہ پھیر اور اپنے ہاں سے ہمیں رحمت عطافرما بے شک تو بہت زیادہ دینے والا ہے",
        "Our Lord, let not our hearts deviate after You have guided us and grant us from Yourself mercy. Indeed, You are the Bestower", "3 Family Of Imran | سُوۡرَةُ آل عِمرَان", "8"),
    DuaObject(
        "رَبَّنَآ إِنَّنَآ ءَامَنَّا فَٱغۡفِرۡ لَنَا ذُنُوبَنَا وَقِنَا عَذَابَ ٱلنَّارَِ",
        "اے رب ہمارے! ہم ایمان لائے ہیں سو ہمیں ہمارے گناہ بخش دے اور ہمیں دوزخ کے عذاب سے بچا لے",
        "Our Lord, indeed we have believed, so forgive us our sins and protect us from the punishment of the Fire", "3 Family Of Imran | سُوۡرَةُ آل عِمرَان", "v16"),
    DuaObject(
        "رَبَّنَآ ءَامَنَّا بِمَآ أَنزَلۡتَ وَٱتَّبَعۡنَا ٱلرَّسُولَ فَٱڪۡتُبۡنَا مَعَ ٱلشَّـٰهِدِينََ",
        "ااے رب ہمارے! ہم اس چیز پر ایمان لائے جو تو نے نازل کی اور ہم رسول کے تابعدار ہوئے سو تو ہمیں گواہی دینے والوں میں لکھ لے",
        "Our Lord, we have believed in what You revealed and have followed the messenger Jesus, so register us among the witnesses [to truth]", "3 Family Of Imran | سُوۡرَةُ آل عِمرَان", "v53"),
    DuaObject(
        "رَبَّنَا ٱغۡفِرۡ لَنَا ذُنُوبَنَا وَإِسۡرَافَنَا فِىٓ أَمۡرِنَا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
        "اے ہمارے رب ہمارے گناہ بخش دے اور جو ہمارے کام میں ہم سے زیادتی ہوئی ہے او رہمارے قدم ثابت رکھ اور کافروں کی قوم پر ہمیں مدد دے",
        "Our Lord, forgive us our sins and the excess [committed] in our affairs and plant firmly our feet and give us victory over the disbelieving people", "3 Family Of Imran | سُوۡرَةُ آل عِمرَان", "v147"),
    DuaObject(
        "رَبَّنَا ظَلَمۡنَآ أَنفُسَنَا وَإِن لَّمۡ تَغۡفِرۡ لَنَا وَتَرۡحَمۡنَا لَنَكُونَنَّ مِنَ ٱلۡخَـٰسِرِينَ",
        "اے رب ہمارے ہم نے اپنی جانوں پر ظلم کیا اور اگر تو ہمیں نہ بخشے گا اور ہم پر رحم نہ کرے گا تو ہم ضرور تباہ ہوجائیں گے",
        "Our Lord, we have wronged ourselves, and if You do not forgive us and have mercy upon us, we will surely be among the losers", "7 The Heights | سُوۡرَةُ الاٴعرَاف", "v23"),
    DuaObject(
        "رَبَّنَآ أَفۡرِغۡ عَلَيۡنَا صَبۡرً۬ا وَتَوَفَّنَا مُسۡلِمِينَ",
        "اے ہمارے رب ہمارے اوپر صبر ڈال اورہمیں مسلمان کر کے موت دے",
        "Our Lord, pour upon us patience and let us die as Muslims [in submission to You]","7 The Heights | سُوۡرَةُ الاٴعرَاف","v126"),
    DuaObject(
        "حَسۡبِىَ ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ‌ۖ عَلَيۡهِ تَوَڪَّلۡتُ‌ۖ وَهُوَ رَبُّ ٱلۡعَرۡشِ ٱلۡعَظِيمِ",
        "مجھے الله ہی کافی ہے اس کے سوا اور کوئی معبود نہیں اسی پر میں بھروسہ کرتا ہوں اور وہی عرش عظیم کا مالک ہے",
        "Sufficient for me is Allah ; there is no deity except Him. On Him I have relied, and He is the Lord of the Great Throne", "9 The Repentance | سُوۡرَةُ التّوبَة", "v129"),
    DuaObject(
        "رَبَّنَا لَا تَجۡعَلۡنَا فِتۡنَةً۬ لِّلۡقَوۡمِ ٱلظَّـٰلِمِينَ وَنَجِّنَا بِرَحۡمَتِكَ مِنَ ٱلۡقَوۡمِ ٱلۡكَـٰفِرِينَِ",
        "اے رب ہمارے ہم پر اس ظالم قوم کا زور نہ آزما اور ہمیں مہربانی فرما کر ان کافروں سے چھڑا دے",
        "Our Lord, make us not [objects of] trial for the wrongdoing people And save us by Your mercy from the disbelieving people", "10 Jonah | سُوۡرَةُ یُونس", "v85-86"),
    DuaObject(
        "رَبِّ إِنِّىٓ أَعُوذُ بِكَ أَنۡ أَسۡـَٔلَكَ مَا لَيۡسَ لِى بِهِۦ عِلۡمٌ۬‌ۖ وَإِلَّا تَغۡفِرۡ لِى وَتَرۡحَمۡنِىٓ أَڪُن مِّنَ ٱلۡخَـٰسِرِينَِ",
        "اے رب میں تیری پناہ لیتا ہوں اس بات سے کہ تجھ سے وہ بات پوچھوں جو مجھے معلوم نہیں اور اگر تو نے مجھے نہ بخشا اورمجھ پر رحم نہ کیا تو میں نقصان والوں میں ہو جاؤں گا",
        "My Lord, I seek refuge in You from asking that of which I have no knowledge. And unless You forgive me and have mercy upon me, I will be among the losers", "11 Hud | سُوۡرَةُ هُود", "v47"),
    DuaObject(
        "فَاطِرَ ٱلسَّمَـٰوَٲتِ وَٱلۡأَرۡضِ أَنتَ وَلِىِّۦ فِى ٱلدُّنۡيَا وَٱلۡأَخِرَةِ‌ۖ تَوَفَّنِى مُسۡلِمً۬ا وَأَلۡحِقۡنِى بِٱلصَّـٰلِحِينَ",
        "اے آسمانو ں اور زمین کے بنانے والے! دنیا اور آخرت میں تو ہی میرا کارساز ہے تو مجھے اسلام پر موت دے اور مجھے نیک بختوں میں شامل کر دے",
        "Creator of the heavens and earth, You are my protector in this world and in the Hereafter. Cause me to die a Muslim and join me with the righteous", "12 Yusuf | سُوۡرَةُ یُوسُف", "v101"),
    DuaObject(
        "رَبِّ ٱجۡعَلۡنِى مُقِيمَ ٱلصَّلَوٰةِ وَمِن ذُرِّيَّتِى‌ۚ رَبَّنَا وَتَقَبَّلۡ دُعَآءِ رَبَّنَا ٱغۡفِرۡ لِى وَلِوَٲلِدَىَّ وَلِلۡمُؤۡمِنِينَ يَوۡمَ يَقُومُ ٱلۡحِسَابُ",
        "اے میرے رب! مجھے اور میری اولاد کو نماز قائم کرنے والا بنا دے اے ہمارے رب! اورمیری دعا قبول فرما اے ہمارے رب! مجھے اورمیرے ماں باپ کو اور ایمانداروں کو حساب قائم ہونے کے دن بخش دے",
        "My Lord, make me an establisher of prayer, and [many] from my descendants. Our Lord, and accept my supplication. Our Lord, forgive me and my parents and the believers the Day the account is established", "13 Ibrahim | سُوۡرَةُ إبراهیم", "v40-41"),
    DuaObject(
        "رَّبِّ ٱرۡحَمۡهُمَا كَمَا رَبَّيَانِى صَغِيرً۬ا",
        "اے میرے رب جس طرح انہوں نے مجھے بچپن سےپالا ہے اسی طرح تو بھی ان پر رحم فرما",
        "My Lord, have mercy upon them as they brought me up [when I was] small", "17 Al-Isra | سُوۡرَةُ بنیٓ اسرآئیل", "v24"),
    DuaObject(
        "رَّبِّ أَدۡخِلۡنِى مُدۡخَلَ صِدۡقٍ۬ وَأَخۡرِجۡنِى مُخۡرَجَ صِدۡقٍ۬ وَٱجۡعَل لِّى مِن لَّدُنكَ سُلۡطَـٰنً۬ا نَّصِيرً۬ا",
        "اے میرے رب مجھے خوبی کے ساتھ پہنچا دے اور مجھے خوبی کے ساتھ نکال لے اور میرے لیے اپنی طرف سے غلبہ دے جس کے ساتھ نصرت ہو",
        "My Lord, cause me to enter a sound entrance and to exit a sound exit and grant me from Yourself a supporting authority", "17 Al-Isra | سُوۡرَةُ بنیٓ اسرآئیل", "v80"),
    DuaObject(
        "رَبَّنَآ ءَاتِنَا مِن لَّدُنكَ رَحۡمَةً۬ وَهَيِّئۡ لَنَا مِنۡ أَمۡرِنَا رَشَدً۬ا",
        "اے ہمارے رب ہم پر اپنی طرف سے رحمت نازل فرما اور ہمارے اس کام کے لیے کامیابی کا سامان کر دے",
        "Our Lord, grant us from Yourself mercy and prepare for us from our affair right guidance", "18 Al-Kahf | سُوۡرَةُ الکهف", "v10"),
    DuaObject(
        "رَبِّ ٱشۡرَحۡ لِى صَدۡرِى وَيَسِّرۡ لِىٓ أَمۡرِى وَٱحۡلُلۡ عُقۡدَةً۬ مِّن لِّسَانِى  يَفۡقَهُواْ قَوۡلِى",
        "اے میرے رب میرا سینہ کھول دے اورمیرا کام آسان کر اور میری زبان سے گرہ کھول دے",
        "My Lord, expand for me my breast [with assurance] And ease for me my task And untie the knot from my tongue", "20-Ta-Ha | سُوۡرَةُ طٰه", "v25-28"),
    DuaObject(
        "رَّبِّ زِدۡنِى عِلۡمً۬ا",
        "میرے رب مجھے اور زیادہ علم دے",
        "My Lord, increase me in knowledge", "20-Ta-Ha | سُوۡرَةُ طٰه", "v114"),

    DuaObject(
        "لَّآ إِلَـٰهَ إِلَّآ أَنتَ سُبۡحَـٰنَكَ إِنِّى ڪُنتُ مِنَ ٱلظَّـٰلِمِينَ",
        "تیرے سوا کوئی معبود نہیں ہے تو بے عیب ہے بے شک میں بے انصافوں میں سے تھا",
        "There is no deity except You; exalted are You. Indeed, I have been of the wrongdoers", "21-Al-Anbiya | سُوۡرَةُ الاٴنبیَاء", "v87"),
    DuaObject(
        "رَبِّ لَا تَذَرۡنِى فَرۡدً۬ا وَأَنتَ خَيۡرُ ٱلۡوَٲرِثِينَ",
        "اے رب مجھے اکیلا نہ چھوڑ اور تو سب سے بہتر وارث ہے",
        "My Lord, do not leave me alone [with no heir], while you are the best of inheritors", "21-Al-Anbiya | سُوۡرَةُ الاٴنبیَاء", "v89"),
    DuaObject(
        "رَّبِّ أَنزِلۡنِى مُنزَلاً۬ مُّبَارَكً۬ا وَأَنتَ خَيۡرُ ٱلۡمُنزِلِينَ",
        "اے میرے رب مجھے برکت کے ساتھ اتار اور تو بہتر اتارنے والا ہے",
        "My Lord, let me land at a blessed landing place, and You are the best to accommodate [us]", "23-Al-Mumenoon | سُوۡرَةُ المؤمنون", "v29"),
    DuaObject(
        "رَّبِّ أَعُوذُ بِكَ مِنۡ هَمَزَٲتِ ٱلشَّيَـٰطِينِ وَأَعُوذُ بِكَ رَبِّ أَن يَحۡضُرُونِ",
        "میرے رب میں شیطانی خطرات سے تیری پناہ مانگتا ہوں اوراےمیرے رب میں تیری پناہ چاہتا ہوں اس سے کہ شیطان میرے پاس آئيں",
        "My Lord, I seek refuge in You from the incitements of the devils, And I seek refuge in You, my Lord, lest they be present with me", "23 Al-Mumenoon | سُوۡرَةُ المؤمنون", "v97-98"),
    DuaObject(
        "رَّبِّ ٱغۡفِرۡ وَٱرۡحَمۡ وَأَنتَ خَيۡرُ ٱلرَّٲحِمِينَ",
        "اے میرے رب معاف کر اور رحم کر اور تو سب سے بہتر رحم کرنے والا ہے",
        "My Lord, forgive and have mercy, and You are the best of the merciful", "23 Al-Mumenoon | سُوۡرَةُ المؤمنون", "v118"),
    DuaObject(
        "رَبَّنَا ٱصۡرِفۡ عَنَّا عَذَابَ جَهَنَّمَ‌ۖ إِنَّ عَذَابَهَا كَانَ غَرَامًا إِنَّهَا سَآءَتۡ مُسۡتَقَرًّ۬ا وَمُقَامً۬ا",
        "اے پروردگار دوزخ کے عذاب کو ہم سے دور رکھیو کہ اس کا عذاب بڑی تکلیف کی چیز ہے اور دوزخ ٹھیرنے اور رہنے کی بہت بری جگہ ہے",
        "Our Lord, avert from us the punishment of Hell. Indeed, its punishment is ever adhering; Indeed, it is evil as a settlement and residence", "25 Al-Furqan | سُوۡرَةُ الفُرقان", "v65-66"),
    DuaObject(
        "رَبَّنَا هَبۡ لَنَا مِنۡ أَزۡوَٲجِنَا وَذُرِّيَّـٰتِنَا قُرَّةَ أَعۡيُنٍ۬ وَٱجۡعَلۡنَا لِلۡمُتَّقِينَ إِمَامًا",
        "اے پروردگار ہم کو ہماری بیویوں کی طرف سے (دل کا چین) اور اولاد کی طرف سے آنکھ کی ٹھنڈک عطا فرما اور ہمیں پرہیزگاروں کا امام بنا",
        "Our Lord, grant us from among our wives and offspring comfort to our eyes and make us an example for the righteous", "25 Al-Furqan | سُوۡرَةُ الفُرقان", "v74"),
    DuaObject(
        "رَبِّ هَبۡ لِى حُڪۡمً۬ا وَأَلۡحِقۡنِى بِٱلصَّـٰلِحِينَ وَٱجۡعَل لِّى لِسَانَ صِدۡقٍ۬ فِى ٱلۡأَخِرِينَ وَٱجۡعَلۡنِى مِن وَرَثَةِ جَنَّةِ ٱلنَّعِيمِ وَلَا تُخۡزِنِى يَوۡمَ يُبۡعَثُونَ",
        "اے پروردگار مجھے علم ودانش عطا فرما اور نیکوکاروں میں شامل کر اور پچھلے لوگوں میں میرا ذکر نیک (جاری) کر اور مجھے نعمت کی بہشت کے وارثوں میں کر اور جس دن لوگ اٹھا کھڑے کئے جائیں گے مجھے رسوا نہ کیجیو",
        "My Lord, grant me authority and join me with the righteous. And grant me a reputation of honor among later generations. And place me among the inheritors of the Garden of Pleasure. And do not disgrace me on the Day they are [all] resurrected", "26 Al-Shuara | سُوۡرَةُ الشُّعَرَاء", "v83-85/87"),
    DuaObject(
        "رَبِّ أَوۡزِعۡنِىٓ أَنۡ أَشۡكُرَ نِعۡمَتَكَ ٱلَّتِىٓ أَنۡعَمۡتَ عَلَىَّ وَعَلَىٰ وَٲلِدَىَّ وَأَنۡ أَعۡمَلَ صَـٰلِحً۬ا تَرۡضَٮٰهُ وَأَدۡخِلۡنِى بِرَحۡمَتِكَ فِى عِبَادِكَ ٱلصَّـٰلِحِينَ",
        "اے پروردگار! مجھے توفیق عطا فرما کہ جو احسان تونے مجھ پر اور میرے ماں باپ پر کئے ہیں ان کا شکر کروں اور ایسے نیک کام کروں کہ تو ان سے خوش ہوجائے اور مجھے اپنی رحمت سے اپنے نیک بندوں میں داخل فرما",
        "My Lord, enable me to be grateful for Your favor which You have bestowed upon me and upon my parents and to do righteousness of which You approve. And admit me by Your mercy into [the ranks of] Your righteous servants", "27 Al-Naml | سُوۡرَةُ النَّمل", "v19"),
    DuaObject(
        "رَبِّ إِنِّى لِمَآ أَنزَلۡتَ إِلَىَّ مِنۡ خَيۡرٍ۬ فَقِيرٌ۬",
        "پروردگار میں اس کا محتاج ہوں کہ تو مجھ پر اپنی نعمت نازل فرمائے",
        "My Lord, indeed I am, for whatever good You would send down to me, in need", "28 Al-Qasas | سُوۡرَةُ القَصَص", "v24"),
    DuaObject(
        "رَبِّ ٱنصُرۡنِى عَلَى ٱلۡقَوۡمِ ٱلۡمُفۡسِدِينَ",
        "اے میرے پروردگار ان مفسد لوگوں کے مقابلے میں مجھے نصرت عنایت فرما",
        "My Lord, support me against the corrupting people", "29 Al-Ankaboot | سُوۡرَةُ العَنکبوت", "v30"),
    DuaObject(
        "رَبِّ أَوۡزِعۡنِىٓ أَنۡ أَشۡكُرَ نِعۡمَتَكَ ٱلَّتِىٓ أَنۡعَمۡتَ عَلَىَّ وَعَلَىٰ وَٲلِدَىَّ وَأَنۡ أَعۡمَلَ صَـٰلِحً۬ا تَرۡضَٮٰهُ وَأَصۡلِحۡ لِى فِى ذُرِّيَّتِىٓ‌ۖ إِنِّى تُبۡتُ إِلَيۡكَ وَإِنِّى مِنَ ٱلۡمُسۡلِمِينَ",
        "اے میرے پروردگار مجھے توفیق دے کہ تو نے جو احسان مجھ پر اور میرے ماں باپ پر کئے ہیں ان کا شکر گزار ہوں اور یہ کہ نیک عمل کروں جن کو تو پسند کرے۔ اور میرے لئے میری اولاد میں صلاح (وتقویٰ) دے۔ میں تیری طرف رجوع کرتا ہوں اور میں فرمانبرداروں میں ہوں",
        "My Lord, enable me to be grateful for Your favor which You have bestowed upon me and upon my parents and to work righteousness of which You will approve and make righteous for me my offspring. Indeed, I have repented to You, and indeed, I am of the Muslims", "46 Al-Ahqaf | سُوۡرَةُ الاٴحقاف", "v15"),
    DuaObject(
        "رَّبَّنَا عَلَيۡكَ تَوَكَّلۡنَا وَإِلَيۡكَ أَنَبۡنَا وَإِلَيۡكَ ٱلۡمَصِيرُ",
        "اے ہمارے پروردگار تجھ ہی پر ہمارا بھروسہ ہے اور تیری ہی طرف ہم رجوع کرتے ہیں اور تیرے ہی حضور میں (ہمیں) لوٹ کر آنا ہے",
        "Our Lord, upon You we have relied, and to You we have returned, and to You is the destination", "60 Al-Mumtahina | سُوۡرَةُ المُمتَحنَة", "v60"),
    DuaObject(
        "رَبَّنَآ أَتۡمِمۡ لَنَا نُورَنَا وَٱغۡفِرۡ لَنَآ‌ۖ إِنَّكَ عَلَىٰ ڪُلِّ شَىۡءٍ۬ قَدِيرٌ۬",
        "اے پروردگار ہمارا نور ہمارے لئے پورا کر اور ہمیں معاف کرنا۔ بےشک خدا ہر چیز پر قادر ہے",
        "Our Lord, perfect for us our light and forgive us. Indeed, You are over all things competent", "66 At-Tahrim | سُوۡرَةُ التّحْریم", "v8"),
    DuaObject(
        "رَبِّ ٱبۡنِ لِى عِندَكَ بَيۡتً۬ا فِى ٱلۡجَنَّةِ وَنَجِّنِى مِن فِرۡعَوۡنَ وَعَمَلِهِۦ وَنَجِّنِى مِنَ ٱلۡقَوۡمِ ٱلظَّـٰلِمِينَ",
        "اے میرے پروردگار میرے لئے بہشت میں اپنے پاس ایک گھر بنا اور مجھے فرعون اور اس کے اعمال (زشت مآل) سے نجات بخش اور ظالم لوگوں کے ہاتھ سے مجھ کو مخلصی عطا فرما",
        "My Lord, build for me near You a house in Paradise and save me from Pharaoh and his deeds and save me from the wrongdoing people", "66 At-Tahrim | سُوۡرَةُ التّحْریم", "v11"),
  ];

  List<DuaObject> getDuaList() {
    return _duaList;
  }
}