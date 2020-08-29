

import 'dart:collection';

import 'package:dua/HadithObject.dart';

class HadithDua {

  Map<String, List<HadithObject>> _duaMap = HashMap();
  List<String> _categories = [];
  
  void initializeMap() {
    // category 1 - Waking up
    var hadithDetail = [HadithDetail("Sahih Bukhari", "16 : What to say when one gets up in the morning", "6325",
            "حَدَّثَنَا عَبْدَانُ، عَنْ أَبِي حَمْزَةَ، عَنْ مَنْصُورٍ، عَنْ رِبْعِيِّ بْنِ حِرَاشٍ، عَنْ خَرَشَةَ بْنِ الْحُرِّ، عَنْ أَبِي ذَرٍّ ـ رضى الله عنه ـ قَالَ كَانَ النَّبِيُّ صلى الله عليه وسلم إِذَا أَخَذَ مَضْجَعَهُ مِنَ اللَّيْلِ قَالَ -اللَّهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَا -  فَإِذَا اسْتَيْقَظَ قَالَ - الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
            "ہم سے عبداللہ نے بیان کیا ، ان سے ابوحمزہ محمد بن میمون نے ، ان سے منصور بن معمر نے ، ان سے ربعی بن حراش نے ، ان سے خرشہ بن الحر نے اور ان سے حضرت ابوذر غفاری رضی اللہ عنہ نے بیان کیا کہ جب رسول اللہ رات میں اپنی خواب گاہ پر جاتے تو کہتے للهم باسمك أموت وأحيا ” اے اللہ ! میں تیر ے ہی نام سے مر تا ہوں اور تیرے ہی نام سے زندہ ہوتا ہوں “ اور جب بیدار ہوتے تو فر ماتے الحمد لله الذي أحيانا بعد ما أماتنا وإليه النشور ‏ ” تمام تعریفیں اس اللہ کے لئے ہیں جس نے ہمیں موت کے بعد زندگی بخشی اور اسی کی طرف ہم کو جانا ہے “",
            "Narrated Abu Dhar: Whenever the Prophet (ﷺ) lay on his bed, he used to say: Allahumma bismika amutu wa ahya, and when he woke up he would say: Al-hamdu lil-lahilladhi ahyana ba'da ma an atana, wa ilaihi an-nushur.")];
    HadithObject hadithObject1 = HadithObject("Waking up","نیند سے بیدار ھونے کے بعد کی دعا",
        "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ", 
        "تمام تعریفیں اس اللہ کے لئے ہیں جس نے ہمیں موت کے بعد زندگی بخشی اور اسی کی طرف ہم کو جانا ہے", 
        "All praise is for Allah, who gave us life after having taken it from us, and unto him is the Resurrection", hadithDetail);

    var hadithDetail2 = [
      HadithDetail("Jami` at-Tirmidhi", "20 : The Supplication: In Your Name, My Lord, I Lay Myself Down", "3401",
          "حَدَّثَنَا ابْنُ أَبِي عُمَرَ الْمَكِّيُّ، حَدَّثَنَا سُفْيَانُ، عَنِ ابْنِ عَجْلاَنَ، عَنْ سَعِيدٍ الْمَقْبُرِيِّ، عَنْ أَبِي هُرَيْرَةَ، رضى اللَّهُ عَنْهُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ- إِذَا قَامَ أَحَدُكُمْ عَنْ فِرَاشِهِ ثُمَّ رَجَعَ إِلَيْهِ فَلْيَنْفُضْهُ بِصَنِفَةِ إِزَارِهِ ثَلاَثَ مَرَّاتٍ فَإِنَّهُ لاَ يَدْرِي مَا خَلَفَهُ عَلَيْهِ بَعْدَهُ فَإِذَا اضْطَجَعَ فَلْيَقُلْ بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي وَبِكَ أَرْفَعُهُ فَإِنْ أَمْسَكْتَ نَفْسِي فَارْحَمْهَا وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ ‏.‏ فَإِذَا اسْتَيْقَظَ فَلْيَقُلِ الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي وَرَدَّ عَلَىَّ رُوحِي وَأَذِنَ لِي بِذِكْرِهِ- قَالَ وَفِي الْبَابِ عَنْ جَابِرٍ وَعَائِشَةَ ‏.‏ قَالَ حَدِيثُ أَبِي هُرَيْرَةَ حَدِيثٌ حَسَنٌ ‏.‏ وَرَوَى بَعْضُهُمْ هَذَا الْحَدِيثَ وَقَالَ فَلْيَنْفُضْهُ بِدَاخِلَةِ إِزَارِهِ",
          "ابوہریرہ رضی الله عنہ سے روایت ہے کہ   نبی اکرم صلی اللہ علیہ وسلم نے فرمایا: ”جب کوئی تم میں سے اپنے بستر پر سے اٹھ جائے پھر لوٹ کر اس پر ( لیٹنے، بیٹھنے ) آئے تو اسے چاہیئے کہ اپنے ازار ( تہبند، لنگی ) کے ( پلو ) کو نے اور کنارے سے تین بار بستر کو جھاڑ دے، اس لیے کہ اسے کچھ پتہ نہیں کہ اس کے اٹھ کر جانے کے بعد وہاں کون سی چیز آ کر بیٹھی یا چھپی ہے، پھر جب لیٹے تو کہے: «باسمك ربي وضعت جنبي وبك أرفعه فإن أمسكت نفسي فارحمها وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين» ”اے میرے رب! میں تیرا نام لے کر ( اپنے بستر پر ) اپنے پہلو کو ڈال رہا ہوں یعنی سونے جا رہا ہوں، اور تیرا ہی نام لے کر میں اسے اٹھاؤں گا بھی، پھر اگر تو میری جان کو ( سونے ہی کی حالت میں ) روک لیتا ہے ( یعنی مجھے موت دے دیتا ہے ) تو میری جان پر رحم فرما، اور اگر تو سونے دیتا ہے تو اس کی ویسی ہی حفاظت فرما جیسی کہ تو اپنے نیک و صالح بندوں کی حفاظت کرتا ہے“، پھر نیند سے بیدار ہو جائے تو اسے چاہیئے کہ کہے: «الحمد لله الذي عافاني في جسدي ورد علي روحي وأذن لي بذكره» ”تمام تعریفیں اس اللہ کے لیے ہیں جس نے میرے بدن کو صحت مند رکھا، اور میری روح مجھ پر لوٹا دی اور مجھے اپنی یاد کی اجازت ( اور توفیق ) دی“",
          "Abu Hurairah (ra) narrated that : the Messenger of Allah (ﷺ) said: “When one of you leaves his bed then returns to it, then let him brush it off with the edge of his Izar three times, for indeed, he does not know what succeeded him upon it after him. When he lies down, let him say: ‘In Your Name, my Lord, I lay my side down, and in Your Name I raise it. And if You take my soul, then have mercy upon it, and if You release it, then protect it with that which You protect Your righteous worshipers (Bismika rabbī waḍa`tu janbī wa bika arfa`uhu, fa’in amsakta nafsī farḥamhā wa in arsaltahā faḥfaẓhā bimā taḥfaẓu bihī `ibādakaṣ-ṣāliḥīn)’ And when he awakens, let him say: All praise is due to Allah, Who healed me in my body, and returned to me my soul, and permitted me to remember Him (Al-ḥamdulillāh alladhī `āfānī fī jasadī wa radda `alayya rūḥī wa adhina lī bidhikrih).")
    ];
    HadithObject hadithObject2 = HadithObject("Waking up","نیند سے بیدار ھونے کے بعد کی دعا",
        "إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَىْءٍ قَدِيرٌ‏.‏ الْحَمْدُ لِلَّهِ، وَسُبْحَانَ اللَّهِ، وَلاَ إِلَهَ إِلاَّ اللَّهُ، وَاللَّهُ أَكْبَرُ، وَلاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ‏.‏ ثُمَّ قَالَ اللَّهُمَّ اغْفِرْ",
        "اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اس کا کوئی شریک نہیں ملک اسی کے لیے ہے اور تمام تعریفیں بھی اسی کے لیے ہیں ، اور وہ ہر چیز پر قادر ہے ۔ تمام تعریفیں اللہ ہی کے لیے ہیں ، اللہ کی ذات پاک ہے ، اللہ تعالیٰ کے سوا کوئی معبود نہیں اور اللہ سب سے بڑا ہے ، اللہ کی مدد کے بغیر نہ کسی کو گناہوں سے بچنے کی طاقت ہے نہ نیکی کرنے کی ہمت “ پھر یہ پڑھے «اللهم اغفر لي‏» اے اللہ ! میری مغفرت فرما",
        "None has the right to be worshipped but Allah. He is the Only One and has no partners . For Him is the Kingdom and all the praises are due for Him. He is Omnipotent. All the praises are for Allah. All the glories are for Allah. And none has the right to be worshipped but Allah, And Allah is Great And there is neither Might nor Power Except with Allah). And then says: -- Allahumma, Ighfir li (O Allah! Forgive me)", hadithDetail2);

    var hadithDetail3 = [
      HadithDetail("Sahih Bukhari", "21 : The superiority of one who wakes up at night and offers the Salat with a loud voice", "1154",
          "حَدَّثَنَا صَدَقَةُ بْنُ الْفَضْلِ، أَخْبَرَنَا الْوَلِيدُ، عَنِ الأَوْزَاعِيِّ، قَالَ حَدَّثَنِي عُمَيْرُ بْنُ هَانِئٍ، قَالَ حَدَّثَنِي جُنَادَةُ بْنُ أَبِي أُمَيَّةَ، حَدَّثَنِي عُبَادَةُ بْنُ الصَّامِتِ، عَنِ النَّبِيِّ صلى الله عليه وسلم قَالَ - مَنْ تَعَارَّ مِنَ اللَّيْلِ فَقَالَ لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَىْءٍ قَدِيرٌ‏.‏ الْحَمْدُ لِلَّهِ، وَسُبْحَانَ اللَّهِ، وَلاَ إِلَهَ إِلاَّ اللَّهُ، وَاللَّهُ أَكْبَرُ، وَلاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ‏.‏ ثُمَّ قَالَ اللَّهُمَّ اغْفِرْ لِي‏.‏ أَوْ دَعَا اسْتُجِيبَ، فَإِنْ تَوَضَّأَ وَصَلَّى قُبِلَتْ صَلاَتُهُ",
          "ہم سے صدقہ بن فضل نے بیان کیا ، کہا کہ ہم کو ولید بن مسلم نے امام اوزاعی سے خبر دی ، کہا کہ مجھ کو عمیر بن ہانی نے بیان کیا ، کہا کہ مجھ سے جنادہ بن ابی امیہ نے بیان کیا ، کہا کہ مجھ سے عبادہ بن صامت نے بیان کیا کہ نبی کریم صلی اللہ علیہ وسلم نے فرمایا جو شخص رات کو بیدار ہو کر یہ دعا پڑھے «لا إله إلا الله وحده لا شريك له ،‏‏‏‏ له الملك ،‏‏‏‏ وله الحمد ،‏‏‏‏ وهو على كل شىء قدير‏.‏ الحمد لله ،‏‏‏‏ وسبحان الله ،‏‏‏‏ ولا إله إلا الله ،‏‏‏‏ والله أكبر ،‏‏‏‏ ولا حول ولا قوة إلا بالله‏» ( ترجمہ ) ” اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اس کا کوئی شریک نہیں ملک اسی کے لیے ہے اور تمام تعریفیں بھی اسی کے لیے ہیں ، اور وہ ہر چیز پر قادر ہے ۔ تمام تعریفیں اللہ ہی کے لیے ہیں ، اللہ کی ذات پاک ہے ، اللہ تعالیٰ کے سوا کوئی معبود نہیں اور اللہ سب سے بڑا ہے ، اللہ کی مدد کے بغیر نہ کسی کو گناہوں سے بچنے کی طاقت ہے نہ نیکی کرنے کی ہمت “ پھر یہ پڑھے «اللهم اغفر لي‏» ( ترجمہ ) اے اللہ ! میری مغفرت فرما “ ۔ یا ( یہ کہا کہ ) کوئی دعا کرے تو اس کی دعا قبول ہوتی ہے ۔ پھر اگر اس نے وضو کیا ( اور نماز پڑھی ) تو نماز بھی مقبول ہوتی ہے ۔",
          "Narrated 'Ubada bin As-Samit : The Prophet (ﷺ) Whoever gets up at night and says: -- 'La ilaha il-lallah Wahdahu la Sharika lahu Lahu-lmulk, waLahu-l-hamd wahuwa 'ala kullishai'in Qadir. Al hamdu lil-lahi wa subhanal-lahi wa la-ilaha il-lal-lah wa-l-lahu akbar wa la hawla Wala Quwata il-la-bil-lah.' (None has the right to be worshipped but Allah. He is the Only One and has no partners . For Him is the Kingdom and all the praises are due for Him. He is Omnipotent. All the praises are for Allah. All the glories are for Allah. And none has the right to be worshipped but Allah, And Allah is Great And there is neither Might nor Power Except with Allah). And then says: -- Allahumma, Ighfir li (O Allah! Forgive me). Or invokes (Allah), he will be responded to and if he performs ablution (and prays), his prayer will be accepted.")
    ];
    HadithObject hadithObject3 = HadithObject("Waking up","نیند سے بیدار ھونے کے بعد کی دعا",
        "الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي وَرَدَّ عَلَىَّ رُوحِي وَأَذِنَ لِي بِذِكْرِهِ",
        "تمام تعریفیں اس اللہ کے لیے ہیں جس نے میرے بدن کو صحت مند رکھا، اور میری روح مجھ پر لوٹا دی اور مجھے اپنی یاد کی اجازت ( اور توفیق ) دی",
        "All praise is due to Allah, Who healed me in my body, and returned to me my soul, and permitted me to remember Him", hadithDetail3);

    _duaMap["Waking up"] = [hadithObject1, hadithObject2, hadithObject3];
    _categories.add("Waking up");

    // category 2 - Breaking fast
    hadithDetail = [HadithDetail("Sunan Abu Dawud", "788: The Saying At The Time Of Breaking The Fast", "2350",
        "حَدَّثَنَا عَبْدُ اللَّهِ بْنُ مُحَمَّدِ بْنِ يَحْيَى أَبُو مُحَمَّدٍ، حَدَّثَنَا عَلِيُّ بْنُ الْحَسَنِ، أَخْبَرَنِي الْحُسَيْنُ بْنُ وَاقِدٍ، حَدَّثَنَا مَرْوَانُ، - يَعْنِي ابْنَ سَالِمٍ - الْمُقَفَّعُ - قَالَ رَأَيْتُ ابْنَ عُمَرَ يَقْبِضُ عَلَى لِحْيَتِهِ فَيَقْطَعُ مَا زَادَ عَلَى الْكَفِّ وَقَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا أَفْطَرَ قَالَ- ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ",
        "مروان بن سالم مقفع کہتے ہیں کہ میں نے عبداللہ بن عمر رضی اللہ عنہما کو دیکھا ، وہ اپنی داڑھی کو مٹھی میں پکڑتے اور جو مٹھی سے زائد ہوتی اسے کاٹ دیتے ، اور کہتے کہ رسول اللہ صلی اللہ علیہ وسلم جب افطار کرتے تو یہ دعا پڑھتے : «ذهب الظمأ وابتلت العروق وثبت الأجر إن شاء الله» ” پیاس ختم ہو گئی ، رگیں تر ہو گئیں ، اور اگر اللہ نے چاہا تو ثواب مل گیا “",
        "Marwan ibn Salim al-Muqaffa' said: I saw Ibn Umar holding his beard with his hand and cutting what exceeded the handful of it. He (Ibn Umar) said that the Prophet (ﷺ) said when he broke his fast: Thirst has gone, the arteries are moist, and the reward is sure, if Allah wills")];
    hadithObject1 = HadithObject("Breaking fast","افطاری",
        "  ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ",
        "پیاس ختم ہو گئی ، رگیں تر ہو گئیں ، اور اگر اللہ نے چاہا تو ثواب مل گیا",
        "Thirst has gone, the arteries are moist, and the reward is sure, if Allah wills", hadithDetail);

    _duaMap["Breaking fast"] = [hadithObject1];
    _categories.add("Breaking fast");

    // category 3 - Leaving Home
    hadithDetail = [HadithDetail("Sunan Abu Dawud", "112: What to say when leaving one's home", "5094",
        "حَدَّثَنَا مُسْلِمُ بْنُ إِبْرَاهِيمَ، حَدَّثَنَا شُعْبَةُ، عَنْ مَنْصُورٍ، عَنِ الشَّعْبِيِّ، عَنْ أُمِّ سَلَمَةَ، قَالَتْ مَا خَرَجَ النَّبِيُّ صلى الله عليه وسلم مِنْ بَيْتِي قَطُّ إِلاَّ رَفَعَ طَرْفَهُ إِلَى السَّمَاءِ فَقَالَ - اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أَضِلَّ أَوْ أُضَلَّ أَوْ أَزِلَّ أَوْ أُزَلَّ أَوْ أَظْلِمَ أَوْ أُظْلَمَ أَوْ أَجْهَلَ أَوْ يُجْهَلَ عَلَىَّ",
        "ام المؤمنین ام سلمہ رضی اللہ عنہا کہتی ہیں کہ   نبی اکرم صلی اللہ علیہ وسلم جب بھی میرے گھر سے نکلتے تو اپنی نگاہ آسمان کی طرف اٹھاتے پھر فرماتے: «اللهم إني أعوذ بك أن أضل أو أضل أو أزل أو أزل أو أظلم أو أظلم أو أجهل أو يجهل على» اے اللہ! میں پناہ مانگتا ہوں اس بات سے کہ میں گمراہ کروں، یا گمراہ کیا جاؤں، میں خود پھسلوں یا پھسلایا جاؤں، میں خود ظلم کروں یا کسی کے ظلم کا شکار بنایا جاؤں، میں خود جہالت کروں، یا مجھ سے جہالت کی جائے۔",
        "Narrated Umm Salamah, Ummul Mu'minin: The Messenger of Allah (ﷺ) never went out of my house without raising his eye to the sky and saying: O Allah! I seek refuge in Thee lest I stray or be led astray, or slip or made to slip, or cause injustice, or suffer injustice, or do wrong, or have wrong done to me.")];
    hadithObject1 = HadithObject("Leaving Home","گھر سے نیکلنے کی دعا",
        "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أَضِلَّ أَوْ أُضَلَّ أَوْ أَزِلَّ أَوْ أُزَلَّ أَوْ أَظْلِمَ أَوْ أُظْلَمَ أَوْ أَجْهَلَ أَوْ يُجْهَلَ عَلَىَّ",
        "اے اللہ! میں پناہ مانگتا ہوں اس بات سے کہ میں گمراہ کروں، یا گمراہ کیا جاؤں، میں خود پھسلوں یا پھسلایا جاؤں، میں خود ظلم کروں یا کسی کے ظلم کا شکار بنایا جاؤں، میں خود جہالت کروں، یا مجھ سے جہالت کی جائے۔",
        "O Allah! I seek refuge in Thee lest I stray or be led astray, or slip or made to slip, or cause injustice, or suffer injustice, or do wrong, or have wrong done to me.", hadithDetail);

    hadithDetail2 = [HadithDetail("Sunan Abu Dawud", "112: What to say when leaving one's home", "5095",
        "حَدَّثَنَا إِبْرَاهِيمُ بْنُ الْحَسَنِ الْخَثْعَمِيُّ، حَدَّثَنَا حَجَّاجُ بْنُ مُحَمَّدٍ، عَنِ ابْنِ جُرَيْجٍ، عَنْ"
            " إِسْحَاقَ بْنِ عَبْدِ اللَّهِ بْنِ أَبِي طَلْحَةَ، عَنْ أَنَسِ بْنِ مَالِكٍ، أَنَّ النَّبِيَّ صلى الله عليه وسلم قَالَ -"
            " إِذَا خَرَجَ الرَّجُلُ مِنْ بَيْتِهِ فَقَالَ بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ "
            ", قَالَ, يُقَالُ حِينَئِذٍ هُدِيتَ وَكُفِيتَ وَوُقِيتَ فَتَتَنَحَّى لَهُ الشَّيَاطِينُ فَيَقُولُ لَهُ شَيْطَانٌ آخَرُ كَيْفَ لَكَ بِرَجُلٍ قَدْ هُدِيَ وَكُفِيَ وَوُقِيَ",
        "انس بن مالک رضی اللہ عنہ کہتے ہیں کہ نبی اکرم صلی اللہ علیہ وسلم نے فرمایا: جب آدمی اپنے گھر سے نکلے پھر کہے «بسم الله توكلت على الله لا حول ولا قوة إلا بالله» اللہ کے نام سے نکل رہا ہوں،"
            " میرا پورا پورا توکل اللہ ہی پر ہے، تمام طاقت و قوت اللہ ہی کی طرف سے ہے تو آپ نے فرمایا: اس وقت کہا جاتا ہے ( یعنی فرشتے کہتے ہیں )"
            " : اب تجھے ہدایت دے دی گئی، تیری طرف سے کفایت کر دی گئی، اور تو بچا لیا گیا، ( یہ سن کر ) شیطان اس سے جدا ہو جاتا ہے، تو اس سے دوسرا شیطان کہتا ہے:"
            " تیرے ہاتھ سے آدمی کیسے نکل گیا کہ اسے ہدایت دے دی گئی، اس کی جانب سے کفایت کر دی گئی اور وہ ( تیری گرفت اور تیرے چنگل سے ) بچا لیا گیا۔",
        "Narrated Anas ibn Malik: The Prophet (ﷺ) said: When a man goes out of his house and says: In the name of Allah, I trust in Allah; there is no might and no power but in Allah, "
            "the following will be said to him at that time: You are guided, defended and protected. The devils will go far from him and another devil will say: How can you deal with a man who has been guided, defended and protected?")];
    hadithObject2 = HadithObject("Leaving Home","گھر سے نیکلنے کی دعا",
        "بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّ",
        "۔اللہ کے نام سے نکل رہا ہوں، میرا پورا پورا توکل اللہ ہی پر ہے، تمام طاقت و قوت اللہ ہی کی طرف سے ہے",
        "In the name of Allah, I trust in Allah; there is no might and no power but in Allah", hadithDetail2);

    _duaMap["Leaving Home"] = [hadithObject1, hadithObject2];
    _categories.add("Leaving Home");

    // category 4 - Entering Home
    hadithDetail = [HadithDetail("Sunan Abu Dawud", "857: The Virtues Of Jihad At Sea", "2494",
        "حَدَّثَنَا عَبْدُ السَّلاَمِ بْنُ عَتِيقٍ، حَدَّثَنَا أَبُو مُسْهِرٍ، حَدَّثَنَا إِسْمَاعِيلُ بْنُ عَبْدِ اللَّهِ، - يَعْنِي ابْنَ سَمَاعَةَ - حَدَّثَنَا الأَوْزَاعِيُّ، حَدَّثَنِي سُلَيْمَانُ بْنُ حَبِيبٍ، عَنْ أَبِي أُمَامَةَ الْبَاهِلِيِّ، عَنْ رَسُولِ اللَّهِ صلى الله عليه وسلم قَالَ"
            "ثَلاَثَةٌ كُلُّهُمْ ضَامِنٌ عَلَى اللَّهِ عَزَّ وَجَلَّ رَجُلٌ خَرَجَ غَازِيًا فِي سَبِيلِ اللَّهِ فَهُوَ ضَامِنٌ عَلَى اللَّهِ حَتَّى يَتَوَفَّاهُ فَيُدْخِلَهُ الْجَنَّةَ أَوْ يَرُدَّهُ بِمَا نَالَ مِنْ أَجْرٍ وَغَنِيمَةٍ وَرَجُلٌ رَاحَ إِلَى الْمَسْجِدِ فَهُوَ ضَامِنٌ عَلَى اللَّهِ حَتَّى يَتَوَفَّاهُ فَيُدْخِلَهُ الْجَنَّةَ أَوْ يَرُدَّهُ بِمَا نَالَ مِنْ أَجْرٍ وَغَنِيمَةٍ وَرَجُلٌ دَخَلَ بَيْتَهُ بِسَلاَمٍ فَهُوَ ضَامِنٌ عَلَى اللَّهِ عَزَّ وَجَلَّ",
        "ابوامامہ باہلی رضی اللہ عنہ کہتے ہیں کہ   رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: تین قسم کے افراد ایسے ہیں جن کا ضامن اللہ تعالیٰ ہے: ایک وہ جو اللہ کے راستے میں جہاد کے لیے نکلے، اللہ اس کا ضامن ہے یا اسے وفات دے کر جنت میں داخل کرے گا، یا اجر اور غنیمت کے ساتھ واپس لوٹائے گا، دوسرا وہ شخص جو مسجد کی طرف چلا، اللہ اس کا ضامن ہے یا اسے وفات دے کر جنت میں داخل کرے گا، یا اجر اور غنیمت کے ساتھ واپس لوٹائے گا، تیسرا وہ شخص جو اپنے گھر میں سلام کر کے داخل ہوا، اللہ اس کا بھی ضامن ہے ۔",
        "Abu Umamat Al Bahili reported the Apostle of Allaah(ﷺ) as saying “There are three persons who are in the security of Allaah, the Exalted.” “A man who goes out on an expedition to fight in the path of Allaah, the Exalted, is in the security of Allaah, until He takes him unto Him(i.e., he dies) and brings him into Paradise or brings him(alive) with reward and booty he obtains and a man who goes to the mosque is in the security of Allaah, until he takes him unto Him(i.e., he dies), and he brings him into Paradise or brings him with reward and spoils he obtains; and a man who enters his house after giving salutation is in the security of Allaah, the Exalted.”")];
    hadithObject1 = HadithObject("Entering Home","گھر میں داخل ھونے کی دعا",
        "السلام عليكم ورحمة الله وبركاته",
        "سلامتی ھو تم پر اور اللہ کی رحمت اور برکتیں",
        "peace be upon you and god's mercy and blessings", hadithDetail);

    _duaMap["Entering Home"] = [hadithObject1];
    _categories.add("Entering Home");

    // category 5 - Morning and evening
    hadithDetail = [HadithDetail("Sahih Bukhari", "80 Invocation:  Afdal Al-Istighfar", "6306",
        "حَدَّثَنَا أَبُو مَعْمَرٍ، حَدَّثَنَا عَبْدُ الْوَارِثِ، حَدَّثَنَا الْحُسَيْنُ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ بُرَيْدَةَ، عَنْ بُشَيْرِ بْنِ كَعْبٍ الْعَدَوِيِّ، قَالَ حَدَّثَنِي شَدَّادُ بْنُ أَوْسٍ ـ رضى الله عنه ـ عَنِ النَّبِيِّ صلى الله عليه وسلم"
            "سَيِّدُ الاِسْتِغْفَارِ أَنْ تَقُولَ اللَّهُمَّ أَنْتَ رَبِّي، لاَ إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَىَّ وَأَبُوءُ لَكَ بِذَنْبِي، فَاغْفِرْ لِي، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ قَالَ - "
            "وَمَنْ قَالَهَا مِنَ النَّهَارِ مُوقِنًا بِهَا، فَمَاتَ مِنْ يَوْمِهِ قَبْلَ أَنْ يُمْسِيَ، فَهُوَ مِنْ أَهْلِ الْجَنَّةِ، وَمَنْ قَالَهَا مِنَ اللَّيْلِ وَهْوَ مُوقِنٌ بِهَا، فَمَاتَ قَبْلَ أَنْ يُصْبِحَ، فَهْوَ مِنْ أَهْلِ الْجَنَّةِ",
        "ہم سے ابو معمر نے بیان کیا ، کہا ہم سے عبدالوارث بن سعید نے بیان کیا ، کہا ہم سے حسین بن ذکوان معلم نے بیان کیا ، کہا ہم سے عبداللہ بن بریدہ نے بیان کیا ان سے بشیر بن کعب عدوی نے کہا کہ مجھ سے شداد بن اوس رضی اللہ عنہ نے بیان کیا اور ان سے رسول اللہ صلی اللہ علیہ وسلم نے کہ سیدالاستغفار ۔ ( مغفرت مانگنے کے سب کلمات کا سردار ) یہ ہے یوں کہے ، ‏ اے اللہ ! تو میرا رب ہے ، تیرے سوا کوئی معبود نہیں ۔ تو نے ہی مجھے پیدا کیا اور میں تیرا ہی بندہ ہوں میں اپنی طاقت کے مطابق تجھ سے کئے ہوئے عہد اور وعدہ پرقائم ہوں ۔ ان بری حرکتوں کے عذاب سے جو میں نے کی ہیں تیری پناہ مانگتا ہوں مجھ پر نعمتیں تیری ہیں اس کااقرار کرتا ہوں ۔ میری مغفرت کر دے کہ تیرے سوا اور کوئی بھی گناہ نہیں معاف کرتا ۔ آنحضرت صلی اللہ علیہ وسلم نے فرمایا کہ جس نے اس دعا کے الفاظ پر یقین رکھتے ہوئے دل سے ان کو کہہ لیا اور اسی دن اس کا انتقال ہو گیا شام ہونے سے پہلے تو وہ جنتی ہے اور جس نے اس دعا کے الفاظ پر یقین رکھتے ہوئے رات میں ان کو پڑھ لیا اور پھر اس کاصبح ہونے سے پہلے انتقال ہو گیا تو وہ جنتی ہے ۔",
        "Narrated Shaddad bin Aus: The Prophet (ﷺ) said : The most superior way of asking for forgiveness from Allah is: Allahumma anta Rabbi la ilaha illa anta, Khalaqtani wa ana `Abduka, wa ana `ala `ahdika wa wa`dika mastata`tu, A`udhu bika min Sharri ma sana`tu, abu'u Laka bini`matika `alaiya, wa abu'u laka bidhanbi faghfir lee fa innahu la yaghfiru adhdhunuba illa anta. The Prophet (ﷺ) added. If somebody recites it during the day with firm faith in it, and dies on the same day before the evening, he will be from the people of Paradise; and if somebody recites it at night with firm faith in it, and dies before the morning, he will be from the people of Paradise.")];
    hadithObject1 = HadithObject("Morning and evening","صبح و شام کی دعا",
        "اللَّهُمَّ أَنْتَ رَبِّي، لاَ إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَىَّ وَأَبُوءُ لَكَ بِذَنْبِي، فَاغْفِرْ لِي، فَإِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ",
        "اے اللہ! تو میرا رب ہے، تیرے سوا کوئی معبود نہیں۔ تو نے ہی مجھے پیدا کیا اور میں تیرا ہی بندہ ہوں میں اپنی طاقت کے مطابق تجھ سے کئے ہوئے عہد اور وعدہ پر قائم ہوں۔ ان بری حرکتوں کے عذاب سے جو میں نے کی ہیں تیری پناہ مانگتا ہوں مجھ پر نعمتیں تیری ہیں اس کا اقرار کرتا ہوں۔ میری مغفرت کر دے کہ تیرے سوا اور کوئی بھی گناہ نہیں معاف کرتا",
        "O Allah! You are my lord! None has the right to be worshipped but You. You created me and I am your slave, and I am faithful to my covenant and"
            " my promise as much as I can. I seek refuge with You from all the evil I have done. I acknowledge before You all the blessings You have bestowed "
            "upon me, and I confess to You all my sins. So I entreat You to forgive my sins, for nobody can forgive sins except You", hadithDetail);

    hadithDetail2 = [HadithDetail("Sahih Muslim", "19: The Tasbih At The Beginning Of The Day And When Going To Sleep", "2726/6913",
        "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، وَعَمْرٌو النَّاقِدُ، وَابْنُ أَبِي عُمَرَ، - وَاللَّفْظُ لاِبْنِ أَبِي عُمَرَ - قَالُوا حَدَّثَنَا سُفْيَانُ، عَنْ مُحَمَّدِ بْنِ عَبْدِ الرَّحْمَنِ، مَوْلَى آلِ طَلْحَةَ عَنْ كُرَيْبٍ، عَنِ ابْنِ عَبَّاسٍ، عَنْ جُوَيْرِيَةَ، أَنَّ النَّبِيَّ صلى الله عليه وسلم خَرَجَ مِنْ عِنْدِهَا بُكْرَةً حِينَ صَلَّى الصُّبْحَ وَهِيَ فِي مَسْجِدِهَا ثُمَّ رَجَعَ بَعْدَ أَنْ أَضْحَى وَهِيَ جَالِسَةٌ فَقَالَ - مَا زِلْتِ عَلَى الْحَالِ الَّتِي فَارَقْتُكِ عَلَيْهَا "
            "قَالَتْ نَعَمْ ‏.‏ قَالَ النَّبِيُّ صلى الله عليه وسلم - لَقَدْ قُلْتُ بَعْدَكِ أَرْبَعَ كَلِمَاتٍ ثَلاَثَ مَرَّاتٍ لَوْ وُزِنَتْ بِمَا قُلْتِ مُنْذُ الْيَوْمِ لَوَزَنَتْهُنَّ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ",
        "کُریب نے حضرت ابن عباس رضی اللہ عنہ سے اور انہوں نے حضرت جویریہ رضی اللہ عنہا سے روایت کی کہ نبی صلی اللہ علیہ وسلم صبح کی نماز پڑھنے کے بعد صبح سویرے ان کے ہاں سے باہر تشریف لے گئے ، اس وقت وہ اپنی نماز پڑھنے والی جگہ میں تھیں ، پھر دن چڑھنے کے بعد آپ صلی اللہ علیہ وسلم ان کے پاس واپس تشریف لائے تو وہ ( اسی طرح ) بیٹھی ہوئی تھیں ۔ آپ نے فرمایا : "
            "تم اب تک اسی حالت میں بیٹھی ہوئی ہو جس پر میں تمہیں چھوڑ کر گیا تھا؟ انہوں نے عرض کی : جی ہاں ، نبی کریم صلی اللہ علیہ وسلم نے فرمایا : تمہارے ( ہاں سے جانے کے ) بعد میں نے چار کلمے تین بار کہے ہیں ، اگر ان کو ان کے ساتھ تولا جائے جو تم نے آج کے دن اب تک کہا ہے تو یہ ان سے وزن میں بڑھ جائیں :"
            "سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته  پاکیزگی ہے اللہ کی اور اس کی تعریف کے ساتھ ، جتنی اس کی مخلوق کی گنتی ہے اور جتنی اس کو پسند ہے اور جتنا اس کے عرش کا وزن اور جتنی اس کے کلمات کی سیاہی ہے",
        "Juwairiya reported that Allah's Messenger (ﷺ) came out from (her apartment) in the morning as she was busy in observing her dawn prayer in her place of worship. He came back in the forenoon and she was still sitting there. He (the Holy Prophet) said to her:"
            "You have been in the same seat since I left you. She said: Yes. Thereupon Allah's Apostle (ﷺ) said: I recited four words three times after I left you and if these are to be weighed against what you have recited since morning these would outweigh them and (these words) are: "
            "Hallowed be Allah and praise is due to Him according to the number of His creation and according to the pleasure of His Self and according to the weight of His Throne and according to the ink (used in recording) words (for His Praise).")];
    hadithObject2 = HadithObject("Morning and evening","صبح و شام کی دعا",
        "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ",
        " پاکیزگی ہے اللہ کی اور اس کی تعریف کے ساتھ ، جتنی اس کی مخلوق کی گنتی ہے اور جتنی اس کو پسند ہے اور جتنا اس کے عرش کا وزن اور جتنی اس کے کلمات کی سیاہی ہے",
        "Hallowed be Allah and praise is due to Him according to the number of His creation and according to the pleasure of His Self and according to the weight of His Throne and according to the ink (used in recording) words (for His Praise).", hadithDetail2);

    _duaMap["Morning And Evening"] = [hadithObject1, hadithObject2];
    _categories.add("Morning And Evening");

    hadithDetail = [HadithDetail("Sahih Muslim", "Chapter 10: What to say when entering the masjid", "713a",
        "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، أَخْبَرَنَا سُلَيْمَانُ بْنُ بِلاَلٍ، عَنْ رَبِيعَةَ بْنِ أَبِي عَبْدِ الرَّحْمَنِ، عَنْ عَبْدِ الْمَلِكِ بْنِ سَعِيدٍ، عَنْ أَبِي حُمَيْدٍ، - أَوْ عَنْ أَبِي أُسَيْدٍ، - قَالَ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم - إِذَا دَخَلَ أَحَدُكُمُ الْمَسْجِدَ فَلْيَقُلِ اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ ‏.‏ وَإِذَا خَرَجَ فَلْيَقُلِ اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ. قَالَ مُسْلِمٌ سَمِعْتُ يَحْيَى بْنَ يَحْيَى يَقُولُ كَتَبْتُ هَذَا الْحَدِيثَ مِنْ كِتَابِ سُلَيْمَانَ بْنِ بِلاَلٍ ‏.‏ قَالَ بَلَغَنِي أَنَّ يَحْيَى الْحِمَّانِيَّ يَقُولُ وَأَبِي أُسَيْدٍ ‏.",
        "یحییٰ بن یحییٰ نے کہا : ہمیں سلمان بن بلال نے ربعیہ بن عبدالرحمان سے خبر دی ، انھوں نے عبدالملک بن سعید سے ، اور انھوں نے حضرت ابو حمید رضی اللہ تعالیٰ عنہ ۔ یا حضرت ابو اسید رضی اللہ تعالیٰ عنہ سے روایت کی ، انھوں نے کہا ، رسول اللہ صلی اللہ علیہ وسلم نے فرمایا - جب تم میں سے کوئی شخص مسجد میں داخل ہوتو کہے- اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ , اے اللہ! میرے لئے اپنی رحمت کے دروازے کھول دے ۔ اور جب مسجد سے نکلے تو کہے -  اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ,  اے اللہ! میں تجھ سے تیرے فضل کا سوال کرتاہوں ۔ امام مسلم ؒ نے کہا : میں نے یحییٰ بن یحییٰ س سنا ، وہ کہتے تھے ، میں نے یہ حدیث سلیمان بن بلال کی کتاب سے لکھی ہے ، انھوں نے کہا : مجھے یہ خبر پہنچی ہے ۔ کہ یحییٰ حمانی شک کے بغیر )- وأبي أسيداور ابو اسید سے کہتے تھے ",
        "When any one of you enters the mosque, he should say: O Allah! open for me the doors of Thy mercy ; and when he steps out he should say: O Allah! I beg of Thee Thy Grace. (Imam Muslim said: I heard Yahya saying: I transcribed this hadith from the compilation of Sulaiman b. Bilal.)")];
    hadithObject1 = HadithObject("Entering and Leaving the masjid","مسجد مین داخل حونے کی دعا",
        "إِذَا دَخَلَ أَحَدُكُمُ الْمَسْجِدَ فَلْيَقُلِ اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ ‏.‏ وَإِذَا خَرَجَ فَلْيَقُلِ اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ",
        " مسجد میں داخل ہوتو کہے- اے اللہ! میرے لئے اپنی رحمت کے دروازے کھول دے اور جب مسجد سے نکلے تو کہے  اے اللہ! میں تجھ سے تیرے فضل کا سوال کرتاہوں ",
        "O Allah! open for me the doors of Thy mercy ; and when he steps out he should say: O Allah! I beg of Thee Thy Grace.", hadithDetail);

    _duaMap["Entering and Leaving the masjid"] = [hadithObject1];
    _categories.add("Entering and Leaving the masjid");

  }

  Map<String, List<HadithObject>> get duaMap => _duaMap;

  List<String> getCategories() {

    if(_duaMap.isEmpty){
      initializeMap();
    }
    return _categories;
  }

  String getUrduCategory(String engCategory) {

    return _duaMap[engCategory][0].categoryu;
  }

  List<HadithObject> getHadithListByCategory(String category) {
    if(_duaMap.isEmpty){
      initializeMap();
    }
    return _duaMap[category];
  }

}