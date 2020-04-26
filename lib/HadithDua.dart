

import 'dart:collection';

import 'package:dua/HadithObject.dart';

class HadithDua {

  Map<String, List<HadithObject>> _duaMap = HashMap();
  List<String> _categories = [];
  
  void initializeMap() {
    var hadithDetail = [HadithDetail("Sahih Bukhari", "16 : What to say when one gets up in the morning", "6325",
            "حَدَّثَنَا عَبْدَانُ، عَنْ أَبِي حَمْزَةَ، عَنْ مَنْصُورٍ، عَنْ رِبْعِيِّ بْنِ حِرَاشٍ، عَنْ خَرَشَةَ بْنِ الْحُرِّ، عَنْ أَبِي ذَرٍّ ـ رضى الله عنه ـ قَالَ كَانَ النَّبِيُّ صلى الله عليه وسلم إِذَا أَخَذَ مَضْجَعَهُ مِنَ اللَّيْلِ قَالَ -اللَّهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَا -  فَإِذَا اسْتَيْقَظَ قَالَ - الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
            "ہم سے عبداللہ نے بیان کیا ، ان سے ابوحمزہ محمد بن میمون نے ، ان سے منصور بن معمر نے ، ان سے ربعی بن حراش نے ، ان سے خرشہ بن الحر نے اور ان سے حضرت ابوذر غفاری رضی اللہ عنہ نے بیان کیا کہ جب رسول اللہ رات میں اپنی خواب گاہ پر جاتے تو کہتے للهم باسمك أموت وأحيا ” اے اللہ ! میں تیر ے ہی نام سے مر تا ہوں اور تیرے ہی نام سے زندہ ہوتا ہوں “ اور جب بیدار ہوتے تو فر ماتے الحمد لله الذي أحيانا بعد ما أماتنا وإليه النشور ‏ ” تمام تعریفیں اس اللہ کے لئے ہیں جس نے ہمیں موت کے بعد زندگی بخشی اور اسی کی طرف ہم کو جانا ہے “",
            "Narrated Abu Dhar: Whenever the Prophet (ﷺ) lay on his bed, he used to say: Allahumma bismika amutu wa ahya, and when he woke up he would say: Al-hamdu lil-lahilladhi ahyana ba'da ma an atana, wa ilaihi an-nushur.")];
    HadithObject hadithObject1 = HadithObject("Wake up",
        "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ", 
        "تمام تعریفیں اس اللہ کے لئے ہیں جس نے ہمیں موت کے بعد زندگی بخشی اور اسی کی طرف ہم کو جانا ہے", 
        "All praise is for Allah, who gave us life after having taken it from us, and unto him is the Resurrection", hadithDetail);

    hadithDetail = [
      HadithDetail("Jami` at-Tirmidhi", "20 : The Supplication: In Your Name, My Lord, I Lay Myself Down", "3401",
          "حَدَّثَنَا ابْنُ أَبِي عُمَرَ الْمَكِّيُّ، حَدَّثَنَا سُفْيَانُ، عَنِ ابْنِ عَجْلاَنَ، عَنْ سَعِيدٍ الْمَقْبُرِيِّ، عَنْ أَبِي هُرَيْرَةَ، رضى اللَّهُ عَنْهُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ- إِذَا قَامَ أَحَدُكُمْ عَنْ فِرَاشِهِ ثُمَّ رَجَعَ إِلَيْهِ فَلْيَنْفُضْهُ بِصَنِفَةِ إِزَارِهِ ثَلاَثَ مَرَّاتٍ فَإِنَّهُ لاَ يَدْرِي مَا خَلَفَهُ عَلَيْهِ بَعْدَهُ فَإِذَا اضْطَجَعَ فَلْيَقُلْ بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي وَبِكَ أَرْفَعُهُ فَإِنْ أَمْسَكْتَ نَفْسِي فَارْحَمْهَا وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ ‏.‏ فَإِذَا اسْتَيْقَظَ فَلْيَقُلِ الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي وَرَدَّ عَلَىَّ رُوحِي وَأَذِنَ لِي بِذِكْرِهِ- قَالَ وَفِي الْبَابِ عَنْ جَابِرٍ وَعَائِشَةَ ‏.‏ قَالَ حَدِيثُ أَبِي هُرَيْرَةَ حَدِيثٌ حَسَنٌ ‏.‏ وَرَوَى بَعْضُهُمْ هَذَا الْحَدِيثَ وَقَالَ فَلْيَنْفُضْهُ بِدَاخِلَةِ إِزَارِهِ",
          "ابوہریرہ رضی الله عنہ سے روایت ہے کہ   نبی اکرم صلی اللہ علیہ وسلم نے فرمایا: ”جب کوئی تم میں سے اپنے بستر پر سے اٹھ جائے پھر لوٹ کر اس پر ( لیٹنے، بیٹھنے ) آئے تو اسے چاہیئے کہ اپنے ازار ( تہبند، لنگی ) کے ( پلو ) کو نے اور کنارے سے تین بار بستر کو جھاڑ دے، اس لیے کہ اسے کچھ پتہ نہیں کہ اس کے اٹھ کر جانے کے بعد وہاں کون سی چیز آ کر بیٹھی یا چھپی ہے، پھر جب لیٹے تو کہے: «باسمك ربي وضعت جنبي وبك أرفعه فإن أمسكت نفسي فارحمها وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين» ”اے میرے رب! میں تیرا نام لے کر ( اپنے بستر پر ) اپنے پہلو کو ڈال رہا ہوں یعنی سونے جا رہا ہوں، اور تیرا ہی نام لے کر میں اسے اٹھاؤں گا بھی، پھر اگر تو میری جان کو ( سونے ہی کی حالت میں ) روک لیتا ہے ( یعنی مجھے موت دے دیتا ہے ) تو میری جان پر رحم فرما، اور اگر تو سونے دیتا ہے تو اس کی ویسی ہی حفاظت فرما جیسی کہ تو اپنے نیک و صالح بندوں کی حفاظت کرتا ہے“، پھر نیند سے بیدار ہو جائے تو اسے چاہیئے کہ کہے: «الحمد لله الذي عافاني في جسدي ورد علي روحي وأذن لي بذكره» ”تمام تعریفیں اس اللہ کے لیے ہیں جس نے میرے بدن کو صحت مند رکھا، اور میری روح مجھ پر لوٹا دی اور مجھے اپنی یاد کی اجازت ( اور توفیق ) دی“",
          "Abu Hurairah (ra) narrated that : the Messenger of Allah (ﷺ) said: “When one of you leaves his bed then returns to it, then let him brush it off with the edge of his Izar three times, for indeed, he does not know what succeeded him upon it after him. When he lies down, let him say: ‘In Your Name, my Lord, I lay my side down, and in Your Name I raise it. And if You take my soul, then have mercy upon it, and if You release it, then protect it with that which You protect Your righteous worshipers (Bismika rabbī waḍa`tu janbī wa bika arfa`uhu, fa’in amsakta nafsī farḥamhā wa in arsaltahā faḥfaẓhā bimā taḥfaẓu bihī `ibādakaṣ-ṣāliḥīn)’ And when he awakens, let him say: All praise is due to Allah, Who healed me in my body, and returned to me my soul, and permitted me to remember Him (Al-ḥamdulillāh alladhī `āfānī fī jasadī wa radda `alayya rūḥī wa adhina lī bidhikrih).")
    ];
    HadithObject hadithObject2 = HadithObject("Wake up",
        "الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي وَرَدَّ عَلَىَّ رُوحِي وَأَذِنَ لِي بِذِكْرِهِ",
        "تمام تعریفیں اس اللہ کے لیے ہیں جس نے میرے بدن کو صحت مند رکھا، اور میری روح مجھ پر لوٹا دی اور مجھے اپنی یاد کی اجازت ( اور توفیق ) دی",
        "All praise is due to Allah, Who healed me in my body, and returned to me my soul, and permitted me to remember Him", hadithDetail);

    _duaMap["Wake up"] = [hadithObject1, hadithObject2];
    _categories.add("Wake up");

    hadithDetail = [HadithDetail("Sunan Abu Dawud", "788: The Saying At The Time Of Breaking The Fast", "2350",
        "حَدَّثَنَا عَبْدُ اللَّهِ بْنُ مُحَمَّدِ بْنِ يَحْيَى أَبُو مُحَمَّدٍ، حَدَّثَنَا عَلِيُّ بْنُ الْحَسَنِ، أَخْبَرَنِي الْحُسَيْنُ بْنُ وَاقِدٍ، حَدَّثَنَا مَرْوَانُ، - يَعْنِي ابْنَ سَالِمٍ - الْمُقَفَّعُ - قَالَ رَأَيْتُ ابْنَ عُمَرَ يَقْبِضُ عَلَى لِحْيَتِهِ فَيَقْطَعُ مَا زَادَ عَلَى الْكَفِّ وَقَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا أَفْطَرَ قَالَ- ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ",
        "مروان بن سالم مقفع کہتے ہیں کہ میں نے عبداللہ بن عمر رضی اللہ عنہما کو دیکھا ، وہ اپنی داڑھی کو مٹھی میں پکڑتے اور جو مٹھی سے زائد ہوتی اسے کاٹ دیتے ، اور کہتے کہ رسول اللہ صلی اللہ علیہ وسلم جب افطار کرتے تو یہ دعا پڑھتے : «ذهب الظمأ وابتلت العروق وثبت الأجر إن شاء الله» ” پیاس ختم ہو گئی ، رگیں تر ہو گئیں ، اور اگر اللہ نے چاہا تو ثواب مل گیا “",
        "Marwan ibn Salim al-Muqaffa' said: I saw Ibn Umar holding his beard with his hand and cutting what exceeded the handful of it. He (Ibn Umar) said that the Prophet (ﷺ) said when he broke his fast: Thirst has gone, the arteries are moist, and the reward is sure, if Allah wills")];
    hadithObject1 = HadithObject("Breaking fast",
        "ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ",
        "پیاس ختم ہو گئی ، رگیں تر ہو گئیں ، اور اگر اللہ نے چاہا تو ثواب مل گیا",
        "Thirst has gone, the arteries are moist, and the reward is sure, if Allah wills", hadithDetail);

    _duaMap["Breaking fast"] = [hadithObject1];
    _categories.add("Breaking fast");
  }

  Map<String, List<HadithObject>> get duaMap => _duaMap;

  List<String> getCategories() {

    if(_duaMap.isEmpty){
      initializeMap();
    }
    return _categories;
  }

  List<HadithObject> getHadithListByCategory(String category) {
    if(_duaMap.isEmpty){
      initializeMap();
    }
    return _duaMap[category];
  }

}