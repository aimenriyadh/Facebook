import 'package:flutter/material.dart';
import 'Home Page/home.dart';
import 'Profile Page/profile.dart';
class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);
  @override
  Main_pageState createState() => Main_pageState();
}
class Main_pageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("facebook",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            titleSpacing: 10,
            automaticallyImplyLeading: true,
            actions: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(25)),
                    child: CircleAvatar(child: Icon(Icons.search,color: Colors.white,),backgroundColor: Colors.black,),
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(25)),
                    child: CircleAvatar(backgroundImage: const AssetImage("images/mes.png")),
                    //alignment: Alignment.topCenter,
                    width: 30,
                    height: 30
                  ),
                ],
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.home,size: 30,),),
                Tab(child: Icon(Icons.ondemand_video_rounded,size: 28,),),
                Tab(child: Icon(Icons.groups,size: 28,),),
                Tab(child: Icon(Icons.notifications_none,size: 28,),),
                Tab(child: Icon(Icons.menu,size: 28,),),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
            ),
          ),
          body: TabBarView(
              children: [
                Home(),        // this page have posts => consider home
                Container(color: Colors.orange,child: Text("Video"),),
                Container(color: Colors.teal,child: Text("Group"),),
                Container(color: Colors.lightGreen,child: Text("Notifications"),),
                Container(color: Colors.green,child: Text("Settings"),),
              ]
          ),
        )
    );
  }
}
