import 'package:flutter/material.dart';

import 'Complete_Profile.dart';
// List About Bio
List bio = [
  {'icon':Icon(Icons.account_balance,color: Colors.grey,),'title':"Studies at Faculty of Computers and Information Tanta University"},
  {'icon':Icon(Icons.home,color: Colors.grey,),'title':"Lives in Tanta"},
  {'icon':Icon(Icons.location_on,color: Colors.grey,),'title':"From Zifta, Al Gharbiyah, Egypt"},
  {'icon':Icon(Icons.access_time_outlined,color: Colors.grey,),'title':"Joined July 2019"},
  {'icon':Icon(Icons.facebook),'title':"mohamedhashim744"},
  {'icon':Icon(Icons.link),'title':"github.com/mohamedhashim73"},
  {'icon':Icon(Icons.link),'title':"linkedin.com/in/mohamed-hashim-3201b4229"},
  {'icon':Icon(Icons.link),'title':"106104024022122182097.sarhne.com"},
  {'icon':Icon(Icons.more_horiz),'title':"See more about Info"},
];
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leadingWidth: 30,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey.withOpacity(0.1)),
          child: Row(
            children: const [
            Icon(Icons.search,color: Colors.grey,size: 23,),
            SizedBox(width: 5,),
            Text("Search",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 19),),],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 0.5,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              child: Divider(color: Colors.black,thickness: 0.1,),
            ),
            // Container contain => Cover & Profile Image
            Container(
              height: 250,
              child: Column(
                children: [
                  // Image Cover 
                  Container(
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/cover.jpg"),fit: BoxFit.fitWidth),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Positioned(
                          bottom:0,
                            left: 100,
                            child: CircleAvatar(foregroundImage: AssetImage("images/df.jpg"),maxRadius: 80,)
                        ),
                        Positioned(
                            left: 210,
                            top:65,
                            child: CircleAvatar(
                              radius: 20,child: Icon(Icons.camera_alt,color: Colors.black,),
                              backgroundColor: Colors.grey.withOpacity(0.6),)
                        ),
                        Positioned(
                          left: 300,
                            bottom:90,
                            child: CircleAvatar(
                              radius: 20,child: Icon(Icons.camera_alt,color: Colors.black,),
                              backgroundColor: Colors.grey.withOpacity(0.6),)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            // Profile Bio
            const SizedBox(height: 27,
              child: Text("Mohamed Hashim",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                  child: Text("الحمد لله رب العالمين",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),textDirection: TextDirection.rtl,),
                ),
                SizedBox(height:25,child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Mobile App Dev",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 5,),
                    Icon(Icons.favorite_outlined,color: Colors.black,size: 20,)
                  ],
                ),)
              ],
            ),
            // Three buttons => add story , edit profile
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      color: Colors.blue,
                      minWidth: 80,
                      height: 40,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: (){},
                      child: Row(
                        children: const [
                          Icon(Icons.add_circle,color: Colors.white,size: 20,),
                          SizedBox(width: 5,),
                          Text("Add to story"),
                        ],
                      )
                  ),
                  MaterialButton(
                      minWidth: 80,height: 40,
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: (){},
                      child: Row(
                        children: const [
                          Icon(Icons.edit,color: Colors.black,size: 20,),
                          SizedBox(width: 5,),
                          Text("Edit Profile"),
                        ],
                      )
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    minWidth: 50,height: 40,color: Colors.grey,
                    onPressed: (){},
                    child: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:  Divider(color: Colors.grey,thickness: 0.4,),
            ),
            // more info about bio
            ListView.builder(
                itemCount: bio.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,i){
                  return SizedBox(
                    height: 43,
                    child: ListTile(
                      leading: bio[i]['icon'],
                      minLeadingWidth: 12,
                      title: Text(bio[i]['title'],style: i==8? TextStyle(fontWeight: FontWeight.bold,fontSize: 17) : TextStyle(),),
                    ),
                  );
                }
              ),
            Complete_Profile(),            // This class have the complete of this page
          ],
        ),
      ),
    );
  }
}
