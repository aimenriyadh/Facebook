import 'package:flutter/material.dart';
// Posts Class
class Post extends StatelessWidget{
  String url;
  String name;
  String time;
  bool post_type ;
  String user_image;
  /*
  * post_type => made this to control showing something in public posts and posts in profile page
  * yes to use with public posts as feature add comment by me exist but in profile page don't exist so i will use false in profile
   */
  int index;       // like i in the listview.builder => use it show something when this value is even
  Post({required this.url,required this.name,required this.time,required this.index,required this.post_type,required this.user_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children:  [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          minVerticalPadding: 0,
          leading: CircleAvatar(backgroundImage: AssetImage(user_image),),
          title: Text(name,style: const TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Row(
            children: [
            Text(time,style: const TextStyle(color: Colors.black),),
            const SizedBox(width: 3,),
            const Icon(Icons.language,color: Colors.black38,size: 15,),
          ],),
          trailing: Column(
            children: const [
              SizedBox(height: 6,),
              Text("⋮",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
            ],
          ),
          ),
        // her put the caption of the post
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 0),
          child: Row(
            children: [
             index.isEven? Text("Every thing will change on this year ",style: Theme.of(context).textTheme.subtitle1,) :
                           Text("I am very happy to be now ",style: Theme.of(context).textTheme.subtitle1,),
              index.isEven? Icon(Icons.favorite,color: Colors.red,size: 20,) :
                            Icon(Icons.favorite,color: Colors.black,size: 20,),
            ],
          ),
        ),
        // here put the image of post
         Container(
          height: 250,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10,bottom: 10),
          decoration: BoxDecoration(color: Colors.black,image: DecorationImage(image: AssetImage("${url}"),fit: BoxFit.fitHeight)),
        ),
        // here put the number of likes on this post
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    index.isEven? const CircleAvatar(child: Icon(Icons.favorite,color: Colors.white,size: 10,),backgroundColor: Colors.red,radius: 9) :
                    CircleAvatar(child: Image.asset("images/like.png"),radius: 9,),
                    SizedBox(width: 7,),
                    index.isEven? Text("Tiger Shroff and 22 others",style: TextStyle(color: Colors.black54,fontSize: 13),) :
                    Text("Saleh Gomaa Ahmed and 10 others",style: TextStyle(color: Colors.black54,fontSize: 13),),
                  ],
                ),
                const SizedBox(width: 5,),
                const Text("10 comments",style: TextStyle(color: Colors.black54,fontSize: 13),),
              ],
            ),
        ),
        const Divider(color: Colors.grey,thickness: 0.2,),
        // Row of => like and comment and share
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(backgroundImage: AssetImage("images/like1.png"),maxRadius: 10,),
                        SizedBox(width: 7,),
                        Text("like",style: TextStyle(color: Colors.black54),)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("images/comment.png",width: 20,height: 20,),
                        const SizedBox(width: 7,),
                        Text("comment",style: const TextStyle(color: Colors.black54),)
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("images/share1.png",width: 20,height: 20,),
                        SizedBox(width: 7,),
                        Text("share",style: TextStyle(color: Colors.black54),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
        ),
        // one comment on the post
        post_type == true ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
          child: Row(
            children: [
              const CircleAvatar(radius: 20,backgroundImage: AssetImage("images/113.jpg"),),
              SizedBox(width: 15,),
              Container(
                padding: const EdgeInsets.all(10),
                //width: 180,
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3),borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.grey,width: 0.2)),
                child: Row(
                  children: [
                    index.isEven? const Text("I wish you do the best ",style:TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15),) :
                                  const Text("Congratulations brother ",style:TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15),),
                    const SizedBox(width: 3,),
                    index.isEven? const Icon(Icons.favorite,color: Colors.red,size: 20,) : Icon(Icons.favorite,color: Colors.black,size: 20,),
                  ],
                ),
              ),
            ],
          ),
        ) : SizedBox(height: 0.1,),
        // My Comment will exist on the public post only as post_type == true
        post_type==true? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Row(
            children: [
              const Expanded(
                flex:1,
                child: CircleAvatar(radius: 20,backgroundImage: AssetImage("images/df.jpg"),),
              ),
              SizedBox(width: 15,),
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  decoration: BoxDecoration(color: Colors.black38.withOpacity(0.1),borderRadius: BorderRadius.circular(25),border: Border.all(color: Colors.grey,width: 0.2)),
                  child: Text("Write a comment ....",style: TextStyle(color: Colors.grey,fontSize: 15),),
                ),
              ),
            ],
          ),
        ) : SizedBox(height: 0.1,),
        Container(
          margin: post_type==true? EdgeInsets.only(top: 15) : EdgeInsets.only(top: 20),
          height: 1,
          child: Divider(color: Colors.grey,thickness: 5,),
        )
      ],
    );
  }
}
