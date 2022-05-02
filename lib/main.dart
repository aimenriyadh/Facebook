import 'package:flutter/material.dart';
import 'package:simple_app/Profile%20Page/profile.dart';
import 'Main_Page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_Page(),
      theme: ThemeData(
          textTheme: const TextTheme(
            subtitle1: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 15),    // for text over the photo on the post
            subtitle2: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:18 ),
            caption : TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:13 ),      // for text exist inside the story
          ),
      ),
    );
  }
}

// ************************* All The Data Related to Posts and story
List info = [
  {"name":"Fergani Sassi","image":"images/fergani.jpg","time":"11h"},
  {"name":"Ayman Sobhy","image":"images/ay.jpg","time":"9h"},
  {"name":"Mohamed Hashim","image":"images/moha.jpg","time":"7h"},
  {"name":"Hassan Mohamed","image":"images/fr.jpg","time":"1h"},
  {"name":"Mohamed Wael","image":"images/wael.jpg","time":"1h"},
  {"name":"Mohamed Ibrahim","image":"images/zay.jpg","time":"7h"},
  {"name":"Ahmed Elsabahy","image":"images/ninga.jpg","time":"4h"},
  {"name":"Sara Kabour","image":"images/20.jpg","time":"4h"},
  {"name":"Abo Gabal","image":"images/gabal.jpg","time":"2h"},
  {"name":"Mahmoud Reda","image":"images/hoda.jpg","time":"1h"},
  {"name":"Mohamed Walid","image":"images/24.jpg","time":"8h"},
  {"name":"Ahmed Elwishy","image":"images/el.jpg","time":"5h"},
  {"name":"Mohamed Reda","image":"images/elsh.jpg","time":"9h"},
  {"name":"Eid Ibrahim","image":"images/ed.jpg","time":"2h"},
  {"name":"Mohamed Hashim","image":"images/sal.jpg","time":"12h"},
  {"name":"Mohamed Abdullah","image":"images/abd.jpg","time":"12h"},
];
// List for images on the profile page
List data = [
  {'url':"images/m.jpg"},
  {'url':"images/m1.jpg"},
  {'url':"images/m2.jpg"},
  {'url':"images/m3.jpg"},
  {'url':"images/m4.jpg"},
  {'url':"images/113.jpg"},
  {'url':"images/sal.jpg"},
  {'url':"images/moha.jpg"},
];
// List for Posts which contain Text not image
List text_post = [
  "إنا لا نضيع اجر من احسن عملا",
  "سبحانك اللهم وبحمدك نشهد انك لا إاله الا انت سبحانك اني كنت من الظالمين",
  "لا تندم علي ما فاتك ؛ لأنه الله لا يفعل الا الخير",
  "اللهم صلي وسلم وبارك علي سيدنا محمد صلي الله عليه وسلم",
  "استغفر الله العظيم من كل ذنب عظيم",
  "سبحانك اللهم وبحمدك نشهد انك لا إاله الا انت سبحانك اني كنت من الظالمين",
  "اللهم صلي وسلم وبارك علي سيدنا محمد صلي الله عليه وسلم",
  "إنا لا نضيع اجر من احسن عملا",
];