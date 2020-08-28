import 'package:flutter/material.dart';
class azkerScreen extends StatefulWidget {
  @override
  _azkerScreenState createState() => _azkerScreenState();
}

class _azkerScreenState extends State<azkerScreen>with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {

    super.initState();
    _tabController=TabController(length: 2, vsync: this);
  }
  @override

  Widget build(BuildContext context) {
    TextStyle txtstyle = TextStyle(
        color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 24);
    TextStyle smaltxtstyle = TextStyle(
        color: Colors.yellowAccent, fontWeight: FontWeight.bold, fontSize: 18);
    TextStyle smaltxt = TextStyle(
        color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 14);
    Divider divider = Divider(
      height: 15,
      color: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor:Colors.white,
          tabs: [
          Tab(text: "أذكار الصباح",),
          Tab(text: "أذكار المساء",),
        ],
        controller: _tabController,

        ),

      ),
      body:  TabBarView(children: [
        SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("وقت قراءة اذكار الصباح",style: txtstyle,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" نوضح لك عزيزي الزائر، أن أذكار الصباح والمساء لها أوقاتها المحدّدة حسب قول بعض العلماء.ودلالة ذلك في أحاديث رسولنا الكريم سيدنا محمد صلّى الله عليه وسلم. “مَنْ قَالَ حِينَ يُصْبِحْ كَذَا و كَذَا، وَمَنْ قَالَ حِينَ يُمْسِي كَذَا و كَذَا”.يبدأ وقت الصباح من نصف الليل إلى الزوال، وأفضل وقت لقول أذكار الصباح هو بعد صلاة الصبح حتّى طلوع الشمس، ويبدأ وقت المساء من زوال الشمس حتّى نهاية النصف الأول من الليل، وأفضل وقت لأذكار المساء هو مِن بعد صلاة العصر حتّى غروب الشمس.",style: smaltxtstyle,),
                ),
                divider,
                Text("قراءة آية الكرسي (مرّة واحدة) ",style: txtstyle,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم {ِاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.} [آية الكرسي – سورة البقرة 255].* من قالها حين يصبح أُجير من الجن حتى يمسي، ومن قالها حين يمسي أجير من الجن حتى يصبح.",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child :Text("قراءة الآية 285 – 286 من سورة البقرة (مرّة واحدة) ",style: txtstyle,),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ { آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. } [ سورة البقرة – الآية: 285 – 286 ].",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child :Text("قراءة سورة النّاس (3 مرّات)",style: txtstyle,),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم{ قُلْ أَعُوذُ بِرَبِّ النَّاسِ(1) مَلِكِ النَّاسِ (2) إِلَهِ النَّاسِ (3) مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (4) الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ (5) مِنَ الْجِنَّةِ وَالنَّاسِ (6).}",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child :Text("قراءة سورة الإخلاص (3 مرّات)",style: txtstyle,),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم { قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ (4).} ",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child :Text("قراءة سورة الفلق (3 مرّات)",style: txtstyle,),
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم { قُل أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِنْ شَرِّ مَا خَلَقَ (2) وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ (5).}  ",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("أَمْسَيْـنا وَأَمْسى الملكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْأَلُكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَها، وَأَعوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّيْلةِ وَشَرِّ ما بَعْدَها، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَلِ وَسوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَذابٍ في النّارِ وَعَذابٍ في القَبْر. (مرة واحدة).",style: smaltxtstyle,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("– اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَعْت، أَبـوءُ لَكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّهُ لا يَغْفِرُ الذُّنوبَ إِلاّ أَنْتَ. (مرة واحدة). ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" من قالها موقناً بها حين يمسي ومات من ليلته دخل الجنّة وكذلك حين يصبح. ",style: smaltxt ,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. (3 مرات). ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("من قالها حين يصبح وحين يمسي كان حقاً على الله أن يرضيه يوم القيامة. ",style: smaltxt ,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("اللّهُـمَّ إِنِّـي أَصبحتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَكَ، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك. (4 مرات).  ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  من قالها أعتقه الله من النار. ",style: smaltxt ,),
                ),
                divider,Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  اللّهُـمَّ ما أَصبح بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.  (مرة واحدة). ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" من قالها حين يصبح أدّى شكر يومه. ",style: smaltxt ,),
                ),
                divider,Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. (7 مرات) ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  من قالها كفاه الله ما أهمّه من أمر الدنيا والآخرة. ",style: smaltxt ,),
                ),
                divider,Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ إسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم. (3 مرات). ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  لم يضرّه من الله شيء. ",style: smaltxt ,),
                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" اللّهُـمَّ بِكَ أَصبحنا وَبِكَ أَمسينا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ. (مرة واحدة). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" أَصبحنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ. (مرة واحدة). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه، وَرِضـا نَفْسِـه، وَزِنَـةَ عَـرْشِـه، وَمِـدادَ كَلِمـاتِـه. (3 مرات).  ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" اللّهُـمَّ إِنّـي أَعوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ. (3 مرات). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي. (مرة واحدة). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ. (3 مرات). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" أَصبحنا وَأصبح الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا. (مرة واحدة).  ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم. (مرة واحدة).",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" أَعوذُ بِكَلِماتِ اللّهِ التّامّاتِ مِنْ شَرِّ ما خَلَق. (3 مرات). ",style: smaltxtstyle,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد. (10 مرّات).  ",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("من صلى عليّ حين يصبح وحين يمسي أدركته شفاعتي يوم القيامة. ",style: smaltxt ,),

                ),

                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ. (3 مرات). ",style: smaltxtstyle,),

                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ. (3 مرات). ",style: smaltxtstyle,),

                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("   أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ. (3 مرات).",style: smaltxtstyle,),

                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" يَا رَبِّ ، لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ، وَلِعَظِيمِ سُلْطَانِكَ. (3 مرات). ",style: smaltxtstyle,),

                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("   لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ. (100 مرة).",style: smaltxtstyle,),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" كانت له عدل عشر رقاب، وكتبت له مائة حسنة، ومحيت عنه مائة سيئة، وكانت له حرزا من الشيطان. ",style: smaltxt ,),

                ),
                divider,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" سُبْحـانَ اللهِ وَبِحَمْـدِهِ. (100 مرة).  ",style: smaltxtstyle,),

                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ، بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",style: smaltxt ,),

                ),

              ],
            ),

        ),),

           SingleChildScrollView(
             child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "وقت قراءة اذكار المساء",
                      style: txtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "نعيد ونوضح لك عزيزي الزائر، أن أذكار الصباح والمساء لها أوقاتها المحدّدة حسب قول بعض العلماء.ودلالة ذلك في أحاديث رسولنا الكريم سيدنا محمد صلّى الله عليه وسلم. “مَنْ قَالَ حِينَ يُصْبِحْ كَذَا و كَذَا، وَمَنْ قَالَ حِينَ يُمْسِي كَذَا و كَذَا”.أما عن وقت اذكار المساء فإن وقتها الفعلي يبدأ منذ وقت العصر وينتهي بغروب الشمس في الأفق.ومن العلماء من يرى أن وقت اذكار المساء، يمتد إلى الثلث الأخير من اللّيل. أيضاً ذهب بعضهم إلى أن بداية اذكار المساء تكون بعد غروب الشمس.",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Text(
                    "قراءة آية الكرسي (مرّة واحدة) ",
                    style: txtstyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم {ِاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.} [آية الكرسي – سورة البقرة 255].* من قالها حين يصبح أُجير من الجن حتى يمسي، ومن قالها حين يمسي أجير من الجن حتى يصبح.",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "قراءة الآية 285 – 286 من سورة البقرة (مرّة واحدة) ",
                      style: txtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ { آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ. } [ سورة البقرة – الآية: 285 – 286 ].",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "قراءة سورة النّاس (3 مرّات)",
                      style: txtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم{ قُلْ أَعُوذُ بِرَبِّ النَّاسِ(1) مَلِكِ النَّاسِ (2) إِلَهِ النَّاسِ (3) مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ (4) الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ (5) مِنَ الْجِنَّةِ وَالنَّاسِ (6).}",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "قراءة سورة الإخلاص (3 مرّات)",
                      style: txtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم { قُلْ هُوَ اللَّهُ أَحَدٌ (1) اللَّهُ الصَّمَدُ (2) لَمْ يَلِدْ وَلَمْ يُولَدْ (3) وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ (4).} ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "قراءة سورة الفلق (3 مرّات)",
                      style: txtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم { قُل أَعُوذُ بِرَبِّ الْفَلَقِ (1) مِنْ شَرِّ مَا خَلَقَ (2) وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ (3) وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ (4) وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ (5).}  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "أَمْسَيْـنا وَأَمْسى الملكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْأَلُكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَها، وَأَعوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّيْلةِ وَشَرِّ ما بَعْدَها، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَلِ وَسوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَذابٍ في النّارِ وَعَذابٍ في القَبْر. (مرة واحدة).",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "– اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَعْت، أَبـوءُ لَكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّهُ لا يَغْفِرُ الذُّنوبَ إِلاّ أَنْتَ. (مرة واحدة). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " من قالها موقناً بها حين يمسي ومات من ليلته دخل الجنّة وكذلك حين يصبح. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "من قالها حين يصبح وحين يمسي كان حقاً على الله أن يرضيه يوم القيامة. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَكَ، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك. (4 مرات).  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  من قالها أعتقه الله من النار. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر.  (مرة واحدة). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " من قالها حين يمسي أدّى شكر يومه. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. (7 مرات) ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  من قالها كفاه الله ما أهمّه من أمر الدنيا والآخرة. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ إسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  لم يضرّه من الله شيء. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ. (مرة واحدة). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ. (مرة واحدة). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه، وَرِضـا نَفْسِـه، وَزِنَـةَ عَـرْشِـه، وَمِـدادَ كَلِمـاتِـه. (3 مرات).  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " اللّهُـمَّ إِنّـي أَعوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي. (مرة واحدة). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " أَمْسَيْنا وَأَمْسَى الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا. (مرة واحدة).  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم. (مرة واحدة).",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " أَعوذُ بِكَلِماتِ اللّهِ التّامّاتِ مِنْ شَرِّ ما خَلَق. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد. (10 مرّات).  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "من صلى عليّ حين يصبح وحين يمسي أدركته شفاعتي يوم القيامة. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "   أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ. (3 مرات).",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " يَا رَبِّ ، لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ، وَلِعَظِيمِ سُلْطَانِكَ. (3 مرات). ",
                      style: smaltxtstyle,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "   لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ. (100 مرة).",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " كانت له عدل عشر رقاب، وكتبت له مائة حسنة، ومحيت عنه مائة سيئة، وكانت له حرزا من الشيطان. ",
                      style: smaltxt,
                    ),
                  ),
                  divider,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " سُبْحـانَ اللهِ وَبِحَمْـدِهِ. (100 مرة).  ",
                      style: smaltxtstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "  حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ، بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ.",
                      style: smaltxt,
                    ),
                  ),
                ],
              ),
          ),
           ),


      ],controller: _tabController,),

    );
  }
}
