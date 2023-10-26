import 'package:blue/main.dart';
import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeChatPage(),
    );
  }
}

class HomeChatPage extends StatefulWidget {
  const HomeChatPage({super.key});

  @override
  State<HomeChatPage> createState() => _HomeChatPageState();
}

class _HomeChatPageState extends State<HomeChatPage> {
  int currentindex = 0;

  List<Map<String, dynamic>> listData = [
    {
       "name" : "Mohit rai",
        "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "Please help me find a good monitor for it",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "hey whatsapp",

      "icon" : "assets/icons/ic_boy.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "hey whatsapp",
      "icon" : "assets/icons/ic_girl.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "Good morning",
      "icon" : "assets/icons/ic_graduation.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTite" : "I am fine",
      "icon" : "assets/icons/ic_pilot.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "Buy back 10k gallons top up credit",
      "icon" : "assets/icons/ic_police.png",



    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "Please help me",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "hey whatsapp",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "Hi ",
      "icon" : "assets/icons/ic_boy.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "Gacor pisan kang",
      "icon" : "assets/icons/ic_girl.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "How are you",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "How do you do",
      "icon" : "assets/icons/ic_boy.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "Please help me find a good monitor for it",
      "icon" : "assets/icons/ic_girl.png",

    },
    {
      "name" : "Mohit rai",
      "time" : "11:23",
      "unRead" : "2",
      "subTitle" : "Thank you mate",
      "icon" : "assets/icons/ic_graduation.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "NO one can come today",
      "icon" : "assets/icons/ic_pilot.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "Thank you mate",
      "icon" : "assets/icons/ic_police.png",



    },
    {
      "time" : "11:23",
      "unRead" : 0,
      "subTitle" : "Please help me find a good monitor for it",
      "name" : "Mohit rai",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
    "subTitle" : "NO one can come today",
      "icon" : "assets/icons/ic_avatar.png",

    },
    {
      "time" : "11:23",
      "unRead" : 0,
      "name" : "Mohit rai",
      "subTitle" : "Thank you mate",
      "icon" : "assets/icons/ic_boy.png",

    },
    {
      "time" : "11:23",
      "unRead" : "2",
      "name" : "Mohit rai",
      "subTitle" : "You're now an admin ",
      "icon" : "assets/icons/ic_girl.png",

    },




  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:  currentindex,
        onTap: (value){
          currentindex=value;
          setState(() {
          });
        },
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Cancel'),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'home'),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0,right: 10,top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mengobrol',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                Icon(Icons.search),

              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: listData.length,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: AssetImage(listData[index]["icon"]),
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Chats',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context , index){
                  return ListTile(
                    leading: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage(listData[index]["icon"]),
                    ),
                    title: Text("${listData[index]["name"]}"),
                    subtitle: Text("${listData[index]["subTitle"]}"),
                    trailing: Column(
                      children: [
                        Text("${listData[index]["time"]}",style: TextStyle(color: Colors.green),),
                        listData[index]["unRead"]==0 ? Container(width: 0,): Container(
                          width: 25,
                          height: 25,
                          child: Center(child: Text("${listData[index]["unRead"]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                        ),

                      ],
                    ),
                  );

                }),
          )
        ],
      ),
    );
  }
}

