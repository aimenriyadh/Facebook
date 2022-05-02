import 'package:flutter/material.dart';
class Opened_Story extends StatelessWidget {
  String name;
  String url;
  Opened_Story({required this.name,required this.url});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
                height: 10,
                alignment: Alignment.topLeft,
                child:  Divider(color: Colors.grey,thickness: 3,),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 25),onTap: (){Navigator.pop(context);},),
                  SizedBox(width: 15,),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(backgroundImage: AssetImage(url),radius: 22,),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17),),
                                SizedBox(height: 2,),
                                Text("Today, 2:30 pm",style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(child: Icon(Icons.more_horiz,color: Colors.grey,size: 30,),),
                            SizedBox(width: 8,),
                            GestureDetector(child: Icon(Icons.close,color: Colors.grey,size: 30,),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90,),
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(url),fit: BoxFit.fill),color: Colors.black,),
            ),
            SizedBox(height: 115,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(child: Icon(Icons.send),maxRadius: 20,),
                  const SizedBox(width: 8,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey.withOpacity(0.5)),
                    child: const Text("Send a message...",style: TextStyle(color: Colors.grey),),
                  ),
                  const SizedBox(width: 10,),
                  const CircleAvatar(backgroundImage: AssetImage("images/care1.png"),maxRadius: 20,),
                  const SizedBox(width: 8,),
                  const CircleAvatar(backgroundImage: AssetImage("images/like.png"),maxRadius: 20,),
                  const SizedBox(width: 8,),
                  const CircleAvatar(backgroundImage: AssetImage("images/love.png"),maxRadius: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
