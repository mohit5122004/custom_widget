
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
      theme: ThemeData(primarySwatch: Colors.cyan),
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
  List<Map<String, dynamic>> listData = [
    {
      "name" : "Raman",
      "color" :  Colors.blue,
      "subTitle" : "hey whatsapp",
      "icon" : "assets/icons/ic_avatar.png",
      "time" : "11:32 am",
      "unRead" : 2
    },
    {
      "name" : "Rohan",
      "color" : Colors.pink,
      "subTitle" : "Pick up the phone",
      "icon" : "assets/icons/ic_boy.png",
      "time" : "11:32 am",
      "unRead" : 5

    },
    {
      "name" : "Roshan",
      "color" : Colors.black,
      "subTitle" : "hey whatsapp",
      "icon" : "assets/icons/ic_girl.png",
      "time" : "11:32 am",
      "unRead" : 0
    },
    {
      "name" : "Sonal",
      "color" : Colors.yellow,
      "subTitle" : " I am fine",
      "icon" : "assets/icons/ic_graduation.png",
      "time" : "11:32 am",
      "unRead" : 3
    },
    {
      "name" : "Naman",
      "color" : Colors.grey,
      "subTitle" : "hey mohit",
      "icon" : "assets/icons/ic_pilot.png",
      "time" : "11:32 am",
      "unRead" : 0
    },
    {
      "name" : "Nakul",
      "color" : Colors.green,
      "subTitle" : "hello kaise ho",
      "icon" : "assets/icons/ic_police.png",
      "time" : "11:32 am",
      "unRead" : 10


    },
    {
      "name" : "Rajeev",
      "color" : Colors.red,
      "subTitle" : "hey rinu",
      "icon" : "assets/icons/ic_avatar.png",
      "time" : "11:32 am",
      "unRead" : 5
    },

    // "Rohan",
    // "Ramadheer",
    // "Rajesh",
    // "Nakul",
    // "rajeev",
    // "Raman",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body:Column(
        children: [
          Expanded(
            child: GridView.extent(
                maxCrossAxisExtent:100,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children:listData.map((e) =>Container(

    color: e['color'],
              )).toList(),
    ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              children:listData.map((e) =>Container(

                color: e['color'],
              )).toList(),
            ),
          ),
        ],
      ),

    );
  }
}


