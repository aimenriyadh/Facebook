import 'package:flutter/material.dart';
import 'package:simple_app/main.dart';
import 'Opened_Story.dart';
import '../Profile Page/profile.dart';
import '../Ready_Classes/Post.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListView(
            children: [
              // Row contain image and Text => What's on your mind
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        // click here to go to Profile Page
                        child: const CircleAvatar(radius: 17,backgroundColor: Colors.green,backgroundImage: AssetImage("images/df.jpg"),),
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){ return Profile();}));},
                      ),
                      Container(
                        width: 230,
                        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 15),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: Border.all(width: 0.3,color: Colors.grey)),
                        child: Text("What's on your mind ?",style: Theme.of(context).textTheme.subtitle1,),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.image_rounded,color: Colors.green,size: 30,))
                    ],
                  ),
              ),
              SizedBox(height: 10,),
              // Row contain Three Text => Stories,Reels,Rooms
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Stories",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 17),),
                    Text("Reels",style: Theme.of(context).textTheme.subtitle2,),
                    Text("Rooms",style: Theme.of(context).textTheme.subtitle2,),
                  ],
                ),
              ),
              // Divider under text Stories
              const Padding(
                padding: const EdgeInsets.only(left: 10,right: 230),
                child: Divider(color: Colors.blue,thickness: 2,),
              ),
              // *************** The beginning of => Stories
              Container(
                height: 170,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 2),
                  children: [
                    // Container contain => Create story by me and my image
                    GestureDetector(
                      child: Container(
                        height: 170,
                        width: 110,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black26,),
                        child: Column(
                          children: [
                            // Image
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage("images/df.jpg"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            // Text => create story and Circle avater
                            Container(
                              height: 40,
                              child: Stack(
                                clipBehavior: Clip.none, children: const [
                                  Positioned(
                                      bottom: 25,left: 40,
                                      child: CircleAvatar(child: Icon(Icons.add),radius: 15,)
                                  ),
                                  Positioned(top: 22,left: 18,child: Text("Create story",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13 ),)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: (){},
                    ),
                    // Another stories
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: info.length,
                      itemBuilder: (context,i){
                        return GestureDetector(
                          // *********** This Function to ** open story **
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Opened_Story(name: info[i]['name'],url: info[i]['image'],);
                          }));},
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: i.isEven? Colors.blueGrey : Colors.teal,),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 160,
                            width: 110,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Circle avatar inside it image
                                Container(
                                  margin:const EdgeInsets.only(left: 7,top: 5,bottom: 4),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),border: i== 0? Border.all(color: Colors.white,width: 1) : Border.all(color: Colors.blue,width: 2)),
                                  child: CircleAvatar(radius: 16,backgroundColor: Colors.orange,backgroundImage: AssetImage("${info[i]['image']}"),),
                                ),
                                // Show image
                                Container(
                                  width: double.infinity,
                                  height:80,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage("${info[i]['image']}"),
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                ),
                                i==0? SizedBox(height: 12,) : SizedBox(height: 10,),
                                // Text => the owner of story name
                                Padding(
                                    padding:const EdgeInsets.only(left: 10),
                                    child: Text(i==0? "Your Story" : "${info[i]['name']}",style: Theme.of(context).textTheme.caption)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 1,
                child: const Divider(color: Colors.grey,thickness: 0.1,),
              ),
              // *************** The beginning of => Posts
              ListView.builder(
                  itemCount: info.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,i){
                    // Call for List => Info which have all data related to posts and story
                  return Post(name: info[i]['name'],url: info[i]['image'],time: info[i]['time'],index: i,post_type: true,user_image: info[i]['image'],);
                  }
                  ),            // Ready_Class for post
            ],
          ),
        )
    );
  }
}
