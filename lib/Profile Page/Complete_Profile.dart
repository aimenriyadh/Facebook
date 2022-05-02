import 'package:flutter/material.dart';
import 'package:simple_app/main.dart';

import '../Ready_Classes/Post.dart';
// Complete Profile Page from the beginning of See about more Info and Posts
class Complete_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 95,
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.25),),
            child: Icon(Icons.add,color: Colors.grey,size: 30,),
          ),
          Row(children: [SizedBox(width: 45,),Text("New",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),],),
          // Container => contain Text Edit public details
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.blueAccent.withOpacity(0.25),),
            child: Text("Edit public details",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
          ),
          Divider(color: Colors.grey,thickness: 0.4,),
          // Show Friends
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            title: Text("Friends",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            subtitle: Text("2,452 Friends",style: TextStyle(color: Colors.grey),),
            trailing: Text("Find\nFriends",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
          ),
          // Showing The photos of friends
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,childAspectRatio: 0.9,mainAxisSpacing: 8),
              itemBuilder: (context,i){
              return Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage(info[i+6]['image']),fit: BoxFit.fill),color: Colors.grey,),
                  ),
                  SizedBox(height: 4,),
                  Text("${info[i+6]['name']}",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                ],
              );
              }
              ),
          // button => see all friends
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.grey.withOpacity(0.25),),
            child: Text("See All Friends",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          // create new post 
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Posts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(minWidth: 40,padding: const EdgeInsets.all(3),color: Colors.grey,onPressed: (){},child: Icon(Icons.filter_list,size: 20,)),
                    SizedBox(width: 7,),
                    MaterialButton(minWidth: 40,padding: const EdgeInsets.all(3),color: Colors.grey,onPressed: (){},child: Icon(Icons.settings,size: 20,),),
                  ],
                ),
              ],
            ),
          ),
          // Photo behind Text What's on your mind?
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: const [
                CircleAvatar(backgroundImage: AssetImage("images/df.jpg"),maxRadius: 20,),
                SizedBox(width: 15,),
                Text("What's on your mind ?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            ),
          ),
          const Divider(color: Colors.grey,thickness: 0.3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: const [Icon(Icons.video_call_outlined,color: Colors.red,),SizedBox(width: 3,),Text("Live")],),
              Row(children: const [Icon(Icons.photo,color: Colors.green,),SizedBox(width: 3,),Text("Photo")],),
              Row(children: const [Icon(Icons.flag,color: Colors.blueGrey,),SizedBox(width: 3,),Text("Life Event")],),
            ],
          ),
          const SizedBox(height: 5,),
          const Divider(color: Colors.grey,thickness: 5,),
          ListView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,i){
                // Call for List => Info which have all data related to posts and story
                return Post(name: "Mohamed Hashim",url: '${data[i]['url']}',time: info[i]['time'],index: i,post_type: false,user_image: "images/df.jpg",);
              }
          ),
        ],
      ),
    );
  }
}
