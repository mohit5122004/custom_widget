
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
      title: "firstApp",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentindex = 0;

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

  // List<Widget> listWidget = [];
  @override
  Widget build(BuildContext context) {

    // for(String name in listData) {
    //   listWidget.add(Container(
    //     width: 200,
    //     height: 100,
    //     margin: EdgeInsets.all(11),
    //     color: Colors.blue,
    //     child: Center(child: Text(name,style: TextStyle(fontSize: 21,color: Colors.white),)),
    //   ));
    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home",style: TextStyle(fontSize: 12),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu))
        ],
      ),
      body: ListView.builder(
        itemCount: listData.length,
          itemBuilder: (context , index){
            return ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
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
                    child: Center(child: Text("${listData[index]["unRead"]}",style: TextStyle(color: Colors.white),)),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle
                    ),
                  ),
                
                ],
              ),
            );

          })



    );
  }
}

///  circular avatar banane ke liye
// Container(
// width: 50,
// decoration: BoxDecoration(
// color: listData[index]["color"],
// shape: BoxShape.circle,
// image: DecorationImage(
// image: AssetImage(listData[index]["icon"],),
// )
// ),
// ),




    //     Container(
    // padding: EdgeInsets.symmetric(horizontal: 20),
    // width: double.infinity,
    // height: 100,
    // margin: EdgeInsets.all(11),
    // color: listData[index]["color"],
    // child: Row(
    // children: [
    // Image.asset(listData[index]["icon"],width: 30,height: 40,),
    // SizedBox(
    // width: 11,
    // ),
    // Column(
    // crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: [
    // Text(listData[index]["name"],style: TextStyle(fontSize: 21,color: Colors.white),),
    // Text(listData[index]["subTitle"],style: TextStyle(fontSize: 16,color: Colors.white),),
    // ],
    // ),
    // ],
    // ),
    // );








      /*ListView(
            children: listData.map((name) => Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(11),
              color: Colors.blue,
              child: Center(child: Text(name,style: TextStyle(fontSize: 21,color: Colors.white),)),
            )).toList(),

          ),
*/


