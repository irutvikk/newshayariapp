import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class Shayaricategorythirdpage extends StatefulWidget {
  List cat;
  int index;

  Shayaricategorythirdpage(this.cat, this.index);

  @override
  State<Shayaricategorythirdpage> createState() =>
      _ShayaricategorythirdpageState();
}

class _ShayaricategorythirdpageState extends State<Shayaricategorythirdpage> {
  List temp = [];

  List love = [
    """हकीकत कहो तो उन्हें ख्वाब लगता है,
शिकवा करो तो उन्हें मज़ाक लगता है,
कितनी शिद्दत से हम उन्हें याद करते हैं,
और एक वो हैं जिन्हें ये सब मजाक लगता है।""",
    """तेरी मोहब्बत ने हमे बेनाम कर दिया,
हमे हर ख़ुशी से अंजान कर दिया,
हमने तो कभी नही चाहा था हमे मोहब्बत हो,
लेकिन उसकी पहली नज़र ने हमे नीलाम कर दिया।""",
    """इस नजर ने उस नजर से बात करली,
रहे खामोश मगर फिर भी बात करली,
जब मोहब्बत की फ़िज़ा को खुश पाया,
तो दोनों निगाहों ने रो रो कर बरसात करली।""",
    """तुझे देख कर ये जहाँ रंगीन नजर आता है,
तेरे बिना दिल को चैन कहां आता है,
तू ही है मेरे इस दिल की धड़कन,
तेरे बिना ये जहां बेकार नज़र आता है।""",
    """तू तोड़ दे वो कसम जो तूने खाई है,
कभी कभी याद करने में क्या बुराई है,
तुझे याद किये बिना रहा भी तो नही जाता,
तूने दिल में जगह जो ऐसी बनाई है।""",
    """इश्क सभी को जीना सीखा देता है,
वफ़ा के नाम पर मरना सीखा देता है,
इश्क नही किया तो करके देखना,
ज़ालिम हर दर्द सहना सिखा देता है।""",
    """आपकी परछाई हमारे दिल में है,
आपकी यादें हमारी आँखों में हैं,
आपको हम भुलाएं भी कैसे,
आपकी मोहब्बत हमारी सांसो में हैं।""",
    """तेरी झील सी आँखों में डूब जाने का दिल चाहता है,
वफ़ा पर तेरी बर्बाद हो जाने का दिल चाहता है,
कोई सम्भाले हमे, बहक रहे हैं कदम,
तेरे इश्क में मर जाने का दिल चाहता है।""",
    """ये तुमसे किसने कहा तुम इश्क का तमाशा करना,
अगर मोहब्बत करते हो हमसे तो बस हल्का सा इशारा करना।""",
    """किसी न किसी को किसी पर एतवार हो जाता है,
एक अजनबी सा चेहरा ही यार हो जाता है,
खूबियों से ही नही होती मोहब्बत सदा,
किसी की कमियों से भी कभी प्यार हो जाता है।""",
    """दिल का हाल बताना नही आता,
हमे ऐसे किसी को तड़पाना नही आता,
सुनना तो चाहतें हैं हम उनकी आवाज़ को,
पर हमे कोई बात करने का बहाना नही आता।""",
    """हर कदम हर पल हम आपके साथ है,
भले ही आपसे दूर सही, लेकिन आपके पास हैं,
जिंदगी में हम कभी आपके हो या न हों,
लेकिन हमे आपकी कमी का हर पल एहसास हैं।""",
    """इश्क करती हूँ तुझसे अपनी जिंदगी से ज्यादा,
मैं डरतीं हूँ मौत से नही तेरी जुदाई से ज्यादा,
चाहे तो हमे आज़मा कर देख किसी और से ज्यादा,
मेरी जिंदगी में कुछ नही तेरी आवाज़ से ज्यादा।""",
    """जब खामोश निगाहों से बात होती है,
तो ऐसे ही मोहब्बत की शुरुआत होती है,
हमतो बस खोये ही रहतें हैं उनके ख्यालों में,
पता ही नही चलता कब दिन कब रात होती है।""",
    """आग लगी दिल में जब वो खफ़ा हुए,
एहसास हुआ तब, जब वो जुदा हुए,
करके वफ़ा वो हमे कुछ दे न सके,
लेकिन दे गये बहुत कुछ जब वो वेबफा हुए।""",
    """जिंदगी में कोई प्यार से प्यारा नही मिलता,
जिंदगी में कोई प्यार से प्यारा नही मिलता,
जो है पास आपके उसको सम्भाल कर रखना,
क्योंकि एक बार खोकर प्यार दोबारा नही मिलता।""",
    """बहुत सुकून मिलता है जब उनसे हमारी बात होती है,
वो हजारो रातों में वो एक रात होती है,
जब निगाहें उठा कर देखते हैं वो मेरी तरफ,
तब वो ही पल मेरे लीये पूरी कायनात होती है।""",
    """Tumhe Dekhte Hi Ye Dil
Bekarar Hone Laga Hai
Teri Chaahat Par Mujhe
Iqrar Hone Laga Hai..""",
    """Teri Aankhon Mein Mujhe
Ishq Najar Aata Hai
mera yeh Dil Tujhe
Beintehaan Chahta Hai..""",
    """Haskar Dard Ko
Seene Se Lagana hai
Tere Palkon Ke Ashkoon Se
Yun Hi Bheeg Jana Hai..""",
    """Ishq Ka Junoon Jab
Kisi Ko Chadhta hai
tab yeh Dil Pyar ki
nayi Kahani likhta Hai..""",
    """Deedar Ko Tere miloo
SaFar Karke aaya hoon
bus Tere Naino Ke Sagar mein
khone es Dil Ko Laya hoon.."""
  ];
  List bewafa = [
    """Mujhe Kismat Se Shiqwa To Nahi Lekin Ai Khuda,
Wo Zindagi Mein Kyun Aaya Jo Kismat Mein Nahi Tha.""",
    """Mohabbat Haar Ke Jeena Bahut Mushkil Hota Hai,
Usey Bas Itna Bata Dena Bharam Toda Nahi Karte.""",
    """Roj Dhhalti Hui Shaam Se Darr Lagta Hai,
Ab Mujhe Ishq Ke Anjaam Se Darr Lagta Hai,
Jab Se Mila Hai Dhokha Iss Ishq Mein,
Tab Se Ishq Ke Naam Se Bhi Darr Lagta Hai.""",
    """Jiske Naseeb Mein Hon Zamane Ki Thhokarein,
Uss BadNaseeb Se Na Sahaaron Ki Baat Kar.""",
    """Bula Raha Hai Kaun MujhKo Uss Taraf,
Mere Liye Bhi Kya Koi Udaas BeKaraar Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Udaas Karti Hain Mujh Ko Nishaniyan Teri.""",
    """Woh Mera Sab Kuchh Hai Par Muqaddar Nahi,
Kaash Wo Mera Kuchh Na Hota Par Muqaddar Hota.""",
    """Mil Bhi Jate Hain Toh Katra Ke Nikal Jate Hain,
Hain Mausam Ki Tarah Log.... Badal Jaate Hain,
Hum Abhi Tak Hain Giraftar-e-Mohabbat Yaaro,
Thokarein Kha Ke Suna Tha Ke Sambhal Jate Hain.""",
    """Bewaqt Bewajah Besabab Si Berukhi Teri,
Phir Bhi Beinteha Chahne Ki Bebasi Meri.""",
    """Dekhi Hai Berukhi Ki Aaj Humne Intehaan,
Hum Pe Najar Padi Toh Mehfil Se Uthh Gaye.""",
    """Ek Najar Bhi Dekhna Ganwaara Nahi Usey,
Jara Sa Bhi Ehsaas Hamaara Nahi Usey,
Wo Sahil Se Dekhte Rahe Doobna Hamara,
Hum Bhi Khuddar They Pukara Nahi Usey.""",
    """Ja Kabhi Fursat Mile Mere Dil Ka Bojh Utaar Do,
Main Bahut Dino Se Udaas Hoon Mujhe Koi Shaam Udhhar Do.""",
    """Hamne to aik sakhs par chahat khatam kardi.
Ab mohabbat kise kahte hain hamen maloom nahin..""",
    """Zindagi ke kuch lamhe yaadgar hote hain, 
Yadoon mein kuch log khass hote hain, 
Yun to wo door hote hain nazaron se, 
Par unke ahsaas dil ke paas hote hain..""",
    """Jab Dhadkano Ko Tham Leta Hai Koi,
Jab Khayalo Mein Naam Hamara Leta Hai koi, 
Yaade Tab aur Yaadgar Ban Jaati Hai, 
Jab Hume Humse Behtar Jaan Leta Hai Koi.""",
    """Kisi Ko Bhi Nahi Chaha Maine, 
Jaan Ek Tujhe Chahne Ke Baad.""",
    """Ek Naam Ek Zikar 
Ek Tum Aur Ek Tumhari Fiqar
Bas Yahi Hai Chhoti Si Zindagi Meri."""
  ];
  List funny = [
    """Raat Ko Kitab Meri Mujhe Dekhti Rahi,
Neend Mujhe Apni Orr Kheenchti Rahi,
Neend Ka Jhonka Mera Mann Moh Gayaa,
Aur Fir Ek Genius Bina Padhe So Gaya.""",
    """Rehta Hai Ibaadat Mein Humein Maut Ka Khatka,
Hum Yaad Khuda Karte Hain Kar Le Na Khuda Yaad.""",
    """Mayyat Pe Aaye Hain Kuchh Iss Adaa Se Woh,
Sab Unn Pe Mar Mite Hain Mujhe Tanha Chhod Ke.""",
    """Iss Duniya Mein Lakhon Log Rahte Hain,
Koi Hansta Hai Toh Koi Rota Hai,
Par Sabse Sukhi Wahi Hota Hai,
Jo Shaam Ko Do Peg Maar Ke Sota Hai.""",
    """Kis Kis Ka Naam Lein Apni Barbadi Mein,
Bahut Log Aaye The Duayein Dene Shaadi Mein.
किस किस का नाम लें अपनी बरबादी में,
बहुत लोग आये थे दुआएं देने शादी में।""",
    """NoteBandi Ka Ek Yeh Bhi Asar Najar Aaya,
Woh Bewafa Fir Se Mere Dar Pe Najar Aaya,""",
    """Kuchh Aise Haadse Bhi Hote Hain Zindgi Mein Dost,
Hajaar Ka Note Rakhne Wale Sau Rupaye Mangte Hain.""",
    """Dosti Buri Ho Toh Use Hone Mat Do,
Agar Ho Gayi Toh Use Khone Mat Do,
Aur Agar Dost Ho Sabse Pyara Toh,
Use Chain Ki Neend Sone Mat Do.""",
    """Mera Dost Mujhse Yeh Kah Kar Dur Chala Gaya Faraz,
Ke Dosti Dur Ki Achhi Roti Tandoor Ki Achhi.""",
    """Ishq Ko Sar Ka Dard Kahne Wale Sunn,
Humne Toh Yeh Dard Apne Sar Le Liya,
Humari Nigahon Se BachKar Woh Kahan Jayenge,
Humne Unke Mohalle Mein Hi Ghar Le Liya.""",
    """Tere Ishq Ka Bukhar Hain Mujhko,
Aur Har Cheej Khane Ki Manaahi Hai,
Ek Ishq Ke Hakeem Ne Sirf,
Tere Chaman Ki Mausami Batayi Hai.""",
    """Hum DilPhenk Aashiq Har Kaam Mein Kamaal Kar Dein,
Jo Vaada Kare Woh Pura Har Haal Mein Kar Dein,
Kya Zarurat Hai Ladkiyo Ko Lipistic Lagane Ki,
Hum Chum-Chum Ke Hi Honth Laal Kar Dein.""",
    """Kala Na Kaho Mere Mahboob Ko,
Kala Na Kaho Mere Mahboob Ko,
Khuda Toh Til Bana Raha Tha,
Syaahi Ka Pyala Lurhak Gaya.""",
    """Aaj Tum Pe Aansuo Ki Barsat Hogi,
Fir Wahi Kadkti Kali Raat Hogi,
Sms Na Kar Ke Tune Dil Dukhaya Hai Mera,
Ja Tere Badan Mein Khujli Sari Raat Hogi.""",
    """Apni Surat Ka Kabhi Toh Deedar De,
Tadap Raha Hun Ab Aur Intezaar Na De,
Apni Aawaj Nahi Sunani Toh Mat Suna,
Kam Se Kam Ek Miss Call Hi Maar De.""",
    """Pehli Najar Mein Laga Woh Meri Hai,
Aankhein Uski Jheel Si Gehri Hain,
Propose Kar Kar Ke Thak Gaye Hum,
Ab Pata Chala Woh Toh Behri Hai.""",
    """Achchey dost takiye ki trah hote hain,
Museebat me seene se laga lo,
Tnhai me sar rakhkar ro lo,
aur gussey me laat bhi maar sakte ho.""",
    """Begairat to bahot dekhe hain,
Tumhara aik apna he makaam hai.""",
    """Kuch dost to khazane ki trah hote hain,
Dil karta hai zameen me gaad dun."""
  ];
  List attitude = [
    """Chamak Yoon Hi Nahi Aati Hai Khuddari Ke Chehre Par,
Anaa Ho Humne Do-Do Waqt Ka Faaka Karaya Hai.""",
    """Wo Manzil Hi Badnaseeb Thi Jo Humko Paa Na Saki,
Varna Jeet Ki Kya Aukaat Jo Humein Thhukra De.""",
    """Maine Kab Kaha Ki Tum Keemat Samjho Humari,
Humein Bikna Hi Agar Hota To Yoon Tanha Nahi Hote.""",
    """Haq Se Do Toh Tumhari Nafrat Bhi Qabool Humein,
Khairat Mein Toh Hum Tumhari Mohabbat Bhi Na Lein.""",
    """Humare Baad Nahi Aayega Tumhein Chaahat Mein Maza,
Tum Sabse Kehte Firoge Humein Chaaho Uski Tarah.""",
    """Kee Mohabbat Toh Siyasat Ka Chalan Chhod Diya,
Hum Agar Pyar Na Karte Toh Hukoomat Karte.""",
    """Paanv Phailaye Toh Fir Na Dekhi Chaadar Humne,
Tujh Ko Chaaha To Aukaat Se Barh Kar Chaaha.""",
    """Zarron Mein RahGujar Ke Chamak Chhod Jaaunga,
Pehchan Apni Dur Talak Chhod Jaaunga.
Khamoshiyon Ki Maut Ganwara Nahi Mujhe,
Sheesha Hoon Toot Kar Bhi Khanak Chhod Jaunga.""",
    """Mizaaj Mein Thodi Sakhti Lazimi Hai Huzoor,
Log Pee Jaate Samandar Agar Khara Na Hota.""",
    """Sahaare Dhhoondhne Ki Aadat Nahi Humari,
Hum Akele Poori Mehfil Ke Barabar Hain.""",
    """Hum Ne Kirdaar Ko Kapdon Ki Tarah Pahena Hai,
Tum Ne Kapdon Hi Ko Kirdaar Samajh Rakha Hai.""",
    """Tum Bahete Paani Se Ho Har Shakl Mein Dhal Jaate Ho,
Main Ret Sa Hoon Mujhse Kachche Ghar Bhi Nahi Bante.""",
    """Dil Hai Kadmon Pe Kisi Ke Sar Jhuka Ho Ya Na Ho,
Bandgi Toh Apni Fitrat Hai Khuda Ho Ya Na Ho.""",
    """Bas Deewangi Ki Khatir Teri Gali Mein Aate Hain,
Varna Aawargi Ke Liye Toh Saara Shahar Pada Hai.""",
    """Main Logon Se Mulakato Ke Lamhe Yaad Rakhta Hoon,
Baatein Bhool Bhi Jaaun Par Lahje Yaad Rakhta Hoon.""",
    """Na Main Gira Na Meri Umeedon Ke Meenar Gire,
Par Kuchh Log Mujhe Giraane Mein Kayi Baar Gire.""",
    """Ehsaan Yeh Raha Tohmat Lagane Walon Ka Mujh Par,
UthhTi Ungliyon Ne Mujhe MashHoor Kar Diya.""",
    """Apni nazar me bahot achchchi hun mai,
Duniyan ki nazar ka theka nahin le rakha maine.""",
    """Jeet hi jeet hun maat he maat hoon, 
Main tere akhtiyar se aage ki baat hoon.""",
    """Chhod Di Hai Ab Humne Wo Fankaari Varna,
Tujh Jaise Haseen Toh Hum Kalam Se Bana Dete The.""",
    """Gumaan Itna Nahi Achha Tu Sunn Le Pehle Jaane Ke,
Paltne Par Mukar Sakta Hun Tujhko JanNe Se Bhi.""",
    """Samandar Baha Dene Ka Jigar Toh Rakhte Hain Lekin,
Humein Aashiqi Ki Numaish Ki Aadat Nahi Hai Dost.""",
    """Mere Baare Mein Apni Soch Ko Thhoda Badal Ke Dekh,
Mujhse Bhi Bure Hain Log Tu Ghar Se Nikal Ke Dekh."""
  ];
  List dard = [
    """Tere Aise Sache Aashiq Hai Hum
Dil Me Jiske Pyar Na Ho Kabhi Kum
Sache Pyar Me To Zindagi Mehak Jati Hai
Na Jane Hmari Aankhe Kyu Hai Nam""",
    """Rota Wahi Hai Jisne Kadr Kiya Ho Sacha Rishta Ko
Matlab Pe Rishte Rakhne Walo Ko Koyi Rula Nhi Sakta""",
    """Tumko Lekar Mera Khayal Nahi Badlega
Saal Badlega Magar Dil Ka Haal Nahi Badlega""",
    """Badle Huye Logo Ke Bare Mai Kya Kahoo Yaro
Maine Apne Hi Pyaar Ko Kisi Aur Ka Hote Dekha Hai""",
    """Mai Mar Jaau To Use Khar Tak Bhi Naa Hone Dena
Wo Sakhsh Masroof Bhut Hai Kahi Uska Waqt Barbaad Na Ho Jaye""",
    """Kitna Mushkil Hai Mohabbat Ki Kahani Likhna
Jaise Pani Se Pani Pe Pani Likhna""",
    """Milta Bhi Nahi Tumhare Jaise Is Saher Man
Humko Kya Maloom Tha Ki Tum Bhi Kisi Aur Ke Ho""",
    """Bhut Zuda Hai Auron Se Mere Dard Ki Kahani
Zakhm Ka Koi Nishan Nahi Aur Dard Ki Koi Intha Nhi""",
    """Wo Mujhe Se Bichda To Jaise Bichad Gayi Zindgi
Main Zinda To Hoon Par Zinda Nahi Raha""",
    """Tere Nafrat Se Bhi Maine Rishta Nibhaya Hai
Tune Baar Baar Mujhe Faltoo Hone Ka Ahsaas Dilaya Hai""",
    """Koi Marta Nahi Kisi Le Liye Ye Sach Hai
Magar Ye Sach Hai Koi Mar Mar Ke Jeeta Hai Kisi Ke Liye""",
    """Abhi Masroof Hoon Kafi Fursat Mein Sochenge Tumhe
Ke Tujhe Yaad Rakhne Main Kya Kya Bhule Hai Hum""",
    """Mohabbat Chor Kar Har Ek Zurm Kar Lena
Warna Tum Bhi Musafir Ban Jaoge Tanha Raaton Ke""",
    """Bhul Jana To Duniya Ka Rasam Hai Dost
Tumne Bhula Diya To Kon Ka Kamaal Kar Diya""",
  ];
  List yaad = [
    """मुझे कुछ भी नहीं कहना इतनी सी गुजारिश है,
बस उतनी बार मिल जाओ जितना याद आते हो।""",
    """Har Ek Pehlu Tera Mere Dil Me Aabaad Ho Jaye,
Tujhe Main Iss Kadar Dekhu Mujhe Tu Yaad Ho Jaye.""",
    """Hum Chaahe To Bhi Tujhe Bhula Nahi Sakte,
Teri Yaadon Se Daaman Chura Nahi Sakte,
Tere Bina Jeena Ek Pal Bhi Mumkin Nahi,
Tumhein Chahte Hain Itna Ki Bata Nahi Sakte.""",
    """Kahin Ye Apni Mohabbat Ki Intehaan To Nahi,
Bahut Dino Se Teri Yaad Bhi Nahi Aayi.""",
    """Kaash Tu Bhi Ban Jaye Teri Yaadon Ki Tarah,
Na Waqt Dekhe Na Bahana, Bas Chali Aaye.""",
    """Dhoodhoge Ujade Rishton Mein Wafa Ke Khazane,
Tum Mere Baad Meri Mohabbat Ko Yaad Karoge.""",
    """Dil Mein Aap Ho Aur Koyi Khaas Kaise Hoga,
Yaadon Mein Aapke Siwa Koyi Paas Kaise Hoga,
Hichkiyan Kehti Hain Aap Yaad Karte Ho,
Par Bologe Nahi To Mujhe Ehsaas Kaise Hoga?""",
    """Nahi Fursat Yakeen Maano Humein Kuchh Aur Karne Ki,
Teri Yaadein Teri Baatein Bahut Masroof Rakhti Hain.""",
    """SarHadein Tod Ke Aa Jati Hai Kisi Panchhi Ki Tarah,
Ye Teri Yaad Hai Jo BantTi Nahi Mulkon Ki Tarah.""",
    """Har Raat Ro Ro Ke Use Bhulaane Lage,
Aanshuo Mein Uske Pyar Ko Bahane Lage,
Ye Dil Bhi Kitna Ajeeb Hai Ki,
Roye Hum To Wo Aur Bhi Yaad Aane Lage.""",
    """Bhool Jana Use Mushkil To Nahi Hai Lekin,
Kaam Aasaan Bhi Hum Se Kahan Hote Hain.""",
    """Gujar Gayi Hai Magar Roj Yaad Aati Hai,
Wo Ek Shaam Jise Bhoolne Ki Hasrat Hai.""",
    """Jaroori To Nahi Hai Ki Tujhe Aankhon Se Hi Dekhein,
Teri Yaad Ka Aana Bhi Tere Deedar Se Kam Nahi.""",
    """Tujhe Bhulaane Ki Koshish To Bahut Ki Ai Sanam,
Teri Yaadein Gulab Ki Shaakh Hain Jo Roj Mahekti Hain.""",
    """Apse Door Jane Ka Irada To Nahi Tha,
Saath-Saath Rehne Ka Vaada To Nahi Tha,
Tum Yaad Aaoge Ye Jante The Hum,
Par Itna Yaad Aaoge Andaza Nahi Tha.""",
  ];
  List dosti = [
    """Ek sabse achhi kithab sau sabse achhe doston ke barabar hothi hai, lekin ek sabse achha dosth ek library ke barabar hotha hai.""",
    """Kis tarah ki achhayi, kis tarah ka bharosa, kis tarah ki dosthj, kis tarah ke pyar ki aap doosron se ummeed karthe hai, iski shuruath sabse pahle aapse honi chahie.""",
    """Friendship is a bond of love and trust,
A journey that is always a must.
Together we laugh, together we cry,
A bond that will never, ever die""",
    """Friendship is not about whom you have known the longest,
It's about who came and never left your side""",
    """True friends are like stars,
You don't always see them,
But you know they're always there""",
    """A friend is someone who understands your past,
Believes in your future,
And accepts you just the way you are""",
    """Friendship is a promise made in the heart,
Silent and unbreakable by any distance or time""",
    """The beauty of friendship is not in the countless words spoken,
But in the silent understanding and mutual support""",
    """A true friend is someone who never gets tired of listening
to your pointless dramas over and over again.""",
    """A friendship that can withstand the test of time
is a treasure worth keeping forever.""",
"""Friendship is not about being inseparable,
it's about being separated and nothing changes""",
"""True friends are the ones who are always there
to catch you when you fall, and lift you up when you stumble""",
"""Friendship is a strong and constant thread
that ties our souls together.""",
"""A true friend is someone who is always there
to lend an ear and a helping hand""",
"""Friendship is a bond that cannot be broken,
even by distance or time.""",
  ];
  List romantic = [
    """Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Kya kahun, kya nahi kahun, bas yehi hai kehna
ki tumse milke dil ka hai jo haal kya kahe""",
    """Tumse milne ki khushi aur tumse bichadne ka gam,
Dono hi mile zindagi mein, lekin tumse milne ka mazaa
Aur tumse bichadne ka gam alag alag hai""",
    """Tumse doori ka ehsaas satane laga,
Tere sath guzara har lamha yaad aane laga,
Jisko dil se mein bhulana chahta tha,
Wahi mere karib aane laga""",
    """Tumko dekha to yeh khayal aaya,
Tumko dekha to yeh khayal aaya,
Ki paagalpan ki hadd hoti hai,
Tumko dekha to yeh khayal aaya""",
    """Tere bina dil lagta nahi,
Tere bina jeena mumkin nahi,
Tere bina kya mera jahaan,
Tere bina koi aas-paas nahi""",
    """Tumko dekha to yeh khayal aaya,
Ki zindagi aakhri ho gayi hai,
Tumko dekha to yeh khayal aaya,
Ki zindagi aakhri ho gayi hai,
Tumko dekha to yeh khayal aaya,
Ki zindagi aakhri ho gayi hai""",
    """Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Kya kahun, kya nahi kahun, bas yehi hai kehna
ki tumse milke dil ka hai jo haal kya kahe""",
    """Tumko chaha bhi to izhar karna na aaya,
Tumko chaha bhi to izhar karna na aaya,
Kat gayi umar humein pyar karna na aaya""",
    """Tumko dekha to yeh khayal aaya,
Ki zindagi aakhri ho gayi hai,
Tumko dekha to yeh khayal aaya,
Ki zindagi aakhri ho gayi hai.""",
    """Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Kya kahun, kya nahi kahun, bas yehi hai kehna
ki tumse milke dil ka hai jo haal kya kahe""",
    """Tumko dekha to yeh khayal aaya,
Ki kismat ne humein tumse milaya hai,
Tumko dekha to yeh khayal aaya,
Ki humne tumse pyar kar liya hai""",
    """Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Kya kahun, kya nahi kahun, bas yehi hai kehna
ki tumse milke dil ka hai jo haal kya kahe""",
    """Tere bina jeena mumkin nahi,
Tere bina dil mera lagta nahi,
Tere bina koi aas-paas nahi,
Tere bina kya mera jahaan""",
    """Tumse dur hoke majboor ho gaye,
Tumse dur hoke majboor ho gaye,
Tumko paane ki chahat mein,
Tumse door ho gaye""",
    """Tumse milke dil ka hai jo haal kya kahe,
Tumse milke dil ka hai jo haal kya kahe,
Kya kahun, kya nahi kahun, bas yehi hai kehna
ki tumse milke dil ka hai jo haal kya kahe""",
    """Tere bina dil mera beqarar hai,
Tere bina jeena bhi ab dushwar hai,
Tumko paana hai meri zaroorat,
Tere bina ab rehna bhi bekar hai""",
  ];
  List zindagi = [
    """Zindagi ka safar hai yeh kaisa safar,
Koi samjha nahi, koi jana nahi""",
    """Zindagi ke har mod par,
Muskurana zaruri hai""",
    """Zindagi ke saare gham,
Tum muskura kar hansoge""",
    """Zindagi ke har ek pal mein,
Khushiya hi khushiya hai""",
    """Zindagi ke liye jeena hai,
To pyar karna seekho""",
    """Zindagi ke har ek mod par,
Pyar ka sath zaruri hai""",
    """Zindagi ke saare rishte,
Sabse pyara hai pyar""",
    """Zindagi ke har ek pal mein,
Pyar ka sath zaruri hai""",
    """Zindagi ke har ek pal mein,
Khushiya hi khushiya hai""",
    """Zindagi ka har lamha hai ek nayi kahani
Ek naya mod hai, ek nayi manzil""",
    """Zindagi ke safar mein hai hum udas
Agar ho pyar ka saath toh hai yeh zindagi hasin""",
    """Zindagi ke har ek mod par hai dukh aur sukh
Agar hum sath hai toh hai zindagi sukh ki rukh""",
    """Zindagi ke har pal hai ek nayi kahani
Ek naya mod hai, ek nayi manzil""",
  ];
  List dua = [
    """Chahat Mein Kisi Ko Imtehan Na Lena,
Nibha Hi Na Saka To Wada Na Dena,
Jise Tum Bin Jine Ki Aadat Hi Na Ho,
Use Kabhi Jeene Ki Dua Na Dena""",
    """Aap Ki Baddua Bhi Dua Ban Ke Lagi,
Aapke Har Gam Ne Bhi Sukun Diya,
Hum Zinda H To Ye Jaankar,
Ki Pyar Se Na Sahi Par Hume Yaad To Kiya""",
    """Zindagi Aapki Ho Par Saanse Meri,
Dil Aapka Ho Par Saanse Meri,
Zindagi Ke Aakhiri Mod Par Dua Hogi Yahi,
Kafan Aapka Ho Aur Maut Meri.""",
    """Ya Khuda Meri Duaaon Mein Itna Asar Kar De,
Khushiyan Use Uska Dard Mujhe Najar Kar De,
Dilon Se Dooriyon Ka Ehsaas Mita De Ai Maula,
Nahin To Uske Aanchal Ko Mera Kafan Kar De.""",
    """Laut Aati Hai Har Baar Dua Meri Khaali,
Jaane Kitni Oonchai Par Khuda Rehta Hai.""",
    """Wafaon Ki Baatein Ki Zafaon Ke Samne,
Le Chale Hum Chiraag Hawaaon Ke Saamne,
Uthhe Hain Jab Bhi Haath Badli Hain Kismatein,
Majboor Hai Khuda Bhi Duaaon Ke Saamne.""",
    """Teri Mohabbat Ki Talab Thi
Isliye Haath Phaila Diye,
Varna Humne To Apni
Zindagi Ki Duaa Bhi Nahi Maangi.""",
    """Tu Mil Jaaye Mujhe Bas Itna Hi Kafi Hai,
Meri Har Saans Ne Ye Hi Duaa Maangi Hai,
Jaane Kyun Dil Khincha Jata Hai Teri Taraf,
Kya Tu Ne Bhi Mujhe Paane Ki Duaa Maangi Hai.""",
    """Taqdeer Likhne Wale Ek Ehasaan Likh De,
Meri Mohabbat Ki Takdeer Mein Muskan Likh De,
Na Mile Zindagi Mein Kabhi Bhi Dard Usko,
Chaahe Uski Kismat Mein Meri Jaan Likh De.""",
    """Maanga Karenge Ab Se Duaa Hijr-e-Yaar Ki,
Akhir Ko Dushmani Hai Duaa Ki Asar Ke Saath""",
    """Wo Aa Gaye Milne Humse Ek Shaam Tanhayi Mitane.
Aur Hum Samajh Baithe Ise Apni Duaaon Ka Asar.""",
    """Jeene Ki Usne Hamein Nayi Adaa Dee Hai,
Khush Rehne Ki Usne Humein Duaa Dee Hai,
Aye Khuda Usko Khushiyan Tamaam Dena,
Jisne Apne Dil Mein Humein Jagah Dee Hai""",
];
  List flirt = [
    """Tumse milne ki khwaish bahut hai,
Tumse baat karne ka armaan bahut hai,
Tumhe dekhne ki chahat bahut hai,
Par tumse door rehkar tumhe yaad karne ka gham bhi bahut hai""",
"""Tumse dur rehkar tumse pyar karna,
Tumse milkar tumse pyar karna,
Tumse naraz hokar tumse pyar karna,
Tumse har pal tumse pyar karna""",
"""Tumse milne ka mausam kitna suhana lagta hai,
Tumse baat karne ka mausam kitna pyara lagta hai,
Tumse dur rehkar tumse yaad karne ka mausam kitna beqarar lagta hai""",
"""Tumse mohabbat hai humein,
Tumse pyar hai humein,
Tumse dur rehkar tumse yaad hai humein,
Tumse har pal tumse fikar hai humein""",
"""Tumse milna hai zaroori,
Tumse baat karna hai zaroori,
Tumse pyar hai zaroori,
Tumse har pal tumse fikar hai zaroori""",
"""Tumse door rehkar tumse yaad karna,
Tumse milkar tumse pyar karna,
Tumse naraz hokar tumse pyar karna,
Tumse har pal tumse pyar karna""",
"""Tumse milke zindagi mein rang bhar gaya,
Tumse pyar karke zindagi mein muskan bhar gaya,
Tumse dur rehke bhi tumse yaad karke zindagi mein josh bhar gaya""",
"""Tumse pyar ki hadh se guzar gaya,
Tumse baat karke zindagi mein udhar gaya,
Tumse milke zindagi mein pyar bhar gaya""",
"""Tumse mohabbat hai dil mein,
Tumse pyar hai rooh mein,
Tumse yaad hai aankhon mein,
Tumse fikar hai saanson mein""",
"""Tumse pyar ki aabroo hai,
Tumse mohabbat ki shaan hai,
Tumse baat karne ki chahat hai,
Tumse milne ki justajoo hai"""
  ];
  List dhokha = [
    """Hatho Ki Lakeero Ke Fareb Me Mat Aana,
Jyotishon Ki Dukano Par Mukaddar Nahin Bikte.""",
    """pal pal uska saath nibhaate hum 
 ek ishaare pe duniya chhod jaate hum 
 samundr ke beech mein pahuch kar fareb kiya usne 
 vo kahata to kinaare par hi doob jaate hum""",
    """dhokha diya tha jab tune mujhe. 
 jindagi se main naaraaj tha,
 socha ki dil se tujhe nikaal doon. 
 magar kambakht dil bhi tere paas tha""",
    """Aankhon se door dil ke kareeb tha,main usaka aur vo mera naseeb tha,
    na kabhee mila na juda hua,hamaara rishta bhee kitana ajeeb tha. ..""",
    """wo baat kya kare jiski koi khabar na ho.
 wo dua kya karen jiska koi asar na ho.
 kaise keh de ki lag jaye hamaari umar aapako.
 kya pata agle pal hamaari umar na ho.""",
    """har kadam har pal hum aapke saath hai,
 bhale hi aapse door sahi, 
 lekin aapke paas hain,
 jindagi mein hum kabhi aapke ho ya na hon,
 lekin hume aapki kami ka har pal ehasaas hain.""",
    """Marna Bhi Mushkil Jis Shakhs Ke Wagair,
Uss Shakhs Ne Khwabon Mein Bhi Aana Chhod Diya.""",
    """teri dosti ne diya sukoon itna ki tere
 baad koi achha bhi na lage
 tujhe karani hai bewafaee to is qadar karna
 ki tere baad koi bewafa bhi na lage""",
    """abhi sooraj nahin doba zara shaam hone do
 mein khud laut jaunga mujhe naakaam to hone do
 mujhe badanaam karne ka bahaana dhundhata hai zamaana
 mein khud hoon jaunga badanaam pahle mera naam to hone do""",
    """Gumnaami Ka Andhera Kuchh Iss Tarah Chha Gaya Hai,
Ke Daastan Ban Ke Jeena Bhi Humein Raas Aa Gaya Hai""",
    """unaki kami se dil mera udaas hai, 
 par mujhe to aaj bhi unke milane ki aas hai, 
 zakhm nahi par dard ka ehasaas hai, 
 aisa lagata hai dil ka ek tukada aaj bhi unke paas hai.""",
    """Pehle Zindagi Cheen Li Mujh Se,
 Ab Wo Meri Maut Ka Bhi Faida Uthati Hai,
 Meri Qabar Pe Phool Chadhane Ke Bahane,
 Woh Kisi aur Se Milne Ati Hai""",
  ];
  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      temp = love;
    } else if (widget.index == 1) {
      temp = romantic;
    } else if (widget.index == 2) {
      temp = dard;
    } else if (widget.index == 3) {
      temp = bewafa;
    } else if (widget.index == 4) {
      temp = yaad;
    } else if (widget.index == 5) {
      temp = dosti;
    } else if (widget.index == 6) {
      temp = zindagi;
    } else if (widget.index == 7) {
      temp = funny;
    } else if (widget.index == 8) {
      temp = attitude;
    }else if (widget.index == 9) {
      temp = dua;
    }else if (widget.index == 10) {
      temp = flirt;
    }else if (widget.index == 11) {
      temp = dhokha;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF4FFFFFF),
      appBar: AppBar(
        title: Text(
          "${widget.cat[widget.index]}",
        ),
        backgroundColor: const Color(0xFFff70a6),
        elevation: 5,
      ),
      body: ListView.builder(
        itemCount: temp.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {

            },
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                      constraints: BoxConstraints(minHeight: 80),
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.all(15),
                      child: Text(
                        temp[index],
                        style: TextStyle(fontSize: 18),
                      )),
                  Container(
                    color: Colors.blueGrey.shade500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            Share.share("${temp[index]}");
                          },
                          tooltip: "share",
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          disabledColor: Colors.transparent,
                          icon: Icon(Icons.share_rounded),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            FlutterClipboard.copy("${temp[index]}").then((value) {
                            Fluttertoast.showToast(
                            msg: "Copied",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            //timeInSecForIosWeb: 3,
                            backgroundColor: Colors.blue.shade900,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                          },
                          tooltip: "copy",
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          disabledColor: Colors.transparent,
                          icon: Icon(Icons.copy_outlined),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
