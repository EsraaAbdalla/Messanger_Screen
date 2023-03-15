// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      backgroundColor: Colors.white,
       elevation: 0.0,
       titleSpacing: 20.0,

       title: Row(
         children: [
           CircleAvatar(
             radius: 20.0,
             backgroundImage: NetworkImage('https://images.unsplash.com/photo-1533086781864-48f0b6a9c599?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&w=1000&q=80'),
           ),
           SizedBox(
             width:15.0,
           ),
           Text(
             'Chats',
             style: TextStyle(
               color: Colors.black,
               fontSize: 30.0,
             ),
           ),
         ],
       ),
       actions: [
         IconButton(
             onPressed: (){},
             icon: CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.camera_alt,
                 size: 16.0,
                 color: Colors.white,
               ),
             ),
         ),
         IconButton(
             onPressed: (){},
             icon: CircleAvatar(
               radius: 15.0,
               backgroundColor: Colors.blue,
               child: Icon(
                 Icons.edit,
                 size: 16.0,
                 color: Colors.white,
               ),
             ),
         ),
       ],

     ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0,),
                  color: Colors.grey[300],
                ),

                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                      Icons.search,
                      ),
                      SizedBox(
                        width:15.0 ,
                      ),
                      Text(
                        'Search',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                    scrollDirection:Axis.horizontal ,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder:(context, index) => SizedBox(
                      width:20.0 ,
                    ) ,
                    itemCount: 25,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                  itemBuilder: (context , index) => buildChatItem(),
                  separatorBuilder: (context , index) =>   SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }


 Widget buildChatItem() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1533086781864-48f0b6a9c599?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&w=1000&q=80'),
            ),
            CircleAvatar(
              radius: 8.5,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 2.0,
                end: 2.0,
              ),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.blue,
              ),
            ),

          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Maria Emad',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Hello my name is Maria Emad',
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                      '02.00 pm'
                  ),
                ],
              ),


            ],
          ),
        ),
      ],
    );

  Widget buildStoryItem() => Container(
    width:60.0 ,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1533086781864-48f0b6a9c599?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8&w=1000&q=80'),
            ),
            CircleAvatar(
              radius: 8.5,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 2.0,
                end: 2.0,
              ),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.blue,
              ),
            ),

          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Maria Emad',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );

}
