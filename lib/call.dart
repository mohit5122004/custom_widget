
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'firstApp',
      theme: ThemeData(primarySwatch: Colors.lime),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentindex = 0;
  List<Map<String , dynamic>> listData = [
    {
      "name" : 'Mohit',
      'subTitle' : "hey whatsapp",

      'img' : "assets/icons/ic_boy.png",
      'time' : "11:32 am",
      'unRead' : 5
    },
{
"name" : 'sohan',
'subTitle' : 'hey man',

'img' : 'assets/icons/ic_avatar.png',
'time' : '11:35 AM',
'unRead' : 9
},
{
"name" : 'Sumit',
'subTitle' : 'hey how are you',

'img' : 'assets/icons/ic_girl.png',
'time' : '11:35 AM',
'unRead' : 0
},
{
"name" : 'Naman',
'subTitle' : 'hey how are you',

'img' : 'assets/icons/ic_graduation.png',
'time' : '11:35 AM',
'unRead' : 1
},
{
"name" : 'Rohan',
'subTitle' : 'hey whatsapp',

'img' : 'assets/icons/ic_avatar.png',
'time' : '11:35 AM',
'unRead' : 6
},
{
"name" : 'Roni',
'subTitle' : 'I am fine',

'img' : 'assets/icons/ic_pilot.png',
'time' : '11:35 AM',
'unRead' : 5
},
{
"name" : 'Mohit',
'subTitle' : 'hello',

'img' : 'assets/icons/ic_police.png',
'time' : '11:35 AM',
'unRead' : 2
},
{
"name" : 'Rohit',
'subTitle' : 'hey who are you',

'img' : 'assets/images/straw.png',
'time' : '11:35 AM',
'unRead' : 0
},
{
"name" : 'Rani',
'subTitle' : 'hey whatsapp',

'img' : 'assets/icons/ic_avatar.png',
'time' : '11:35 AM',
'unRead' : 5
},
    {
      "name" : 'Mohit',
      'subTitle' : "hey whatsapp",

      'img' : "assets/icons/ic_boy.png",
      'time' : "11:32 am",
      'unRead' : 5
    },
    {
      "name" : 'sohan',
      'subTitle' : 'hey man',

      'img' : 'assets/icons/ic_avatar.png',
      'time' : '11:35 AM',
      'unRead' : 9
    },
    {
      "name" : 'Sumit',
      'subTitle' : 'hey how are you',

      'img' : 'assets/icons/ic_girl.png',
      'time' : '11:35 AM',
      'unRead' : 0
    },
    {
      "name" : 'Naman',
      'subTitle' : 'hey how are you',

      'img' : 'assets/icons/ic_graduation.png',
      'time' : '11:35 AM',
      'unRead' : 1
    },
    {
      "name" : 'Rohan',
      'subTitle' : 'hey whatsapp',

      'img' : 'assets/icons/ic_avatar.png',
      'time' : '11:35 AM',
      'unRead' : 6
    },
    {
      "name" : 'Roni',
      'subTitle' : 'I am fine',

      'img' : 'assets/icons/ic_pilot.png',
      'time' : '11:35 AM',
      'unRead' : 5
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit',style: TextStyle(fontSize: 16,color: Colors.blue),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.blue,)),
          SizedBox(width: 10),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.blue,)),
        ],
      ),
      body: 
//        Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//        Text('Chats',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w900),),
//        Container(
//         child: Row(
//         children: [
//         Row(
// children: [
//
// ],
// ),
// IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(15.0),
// child: Container(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Row(
// children: [
// Text('Broadcast Lists',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue),)
// ],
// ),
// Text('New Group',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue),)
// ],
// ),
// ),
// ),

                ListView.builder(
itemCount: listData.length,
itemBuilder: (context,index){
return ListTile(
leading: CircleAvatar(
maxRadius: 30,
backgroundImage: AssetImage(listData[index]['img']),
),
title: Text("${(listData[index]['name'])}"),
subtitle: Text("${(listData[index]['subTitle'])}"),
trailing: Column(
children: [
Text('${(listData[index]['time'])}',style: TextStyle(color: Colors.blue),),
listData[index]['unRead']==0?Container(width: 0,): Container(
width: 25,
height: 25,
child: Center(child: Text('${(listData[index]['unRead'])}',style: TextStyle(color: Colors.white),)),
decoration: const BoxDecoration(
shape: BoxShape.circle,
color: Colors.blue
),
),

],
),
);
}),
        // ],
       // ),

      

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex:  currentindex,
        onTap: (value){
          currentindex=value;
          setState(() {
          });
        },
        items: [


          BottomNavigationBarItem(backgroundColor:Colors.yellow ,icon: Icon(Icons.update),label: 'updates'),
          BottomNavigationBarItem(backgroundColor:Colors.blue ,icon: Icon(Icons.call,size: 21,),label: 'calls'),
          BottomNavigationBarItem(backgroundColor:Colors.blue ,icon: Icon(Icons.groups,size: 30,),label: 'communities'),
          BottomNavigationBarItem(backgroundColor:Colors.cyan ,icon: Icon(Icons.chat_sharp,size: 30,),label: 'chats'),
          BottomNavigationBarItem(backgroundColor:Colors.cyan ,icon: Icon(Icons.settings_suggest_outlined,size: 30,),label: 'setting'),
        ],
      ),

    );
  }
}





