import 'package:blue/list.dart';
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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  List onBoardingdata = [
    {
      "title" : "find a NEWS",
      "content" : "You can find best news from our tools",
      "image" : "assets/icons/ic_avatar.png"
    },
    {
      "title" : "find a NEWS",
      "content" : "You can find best news from our tools",
      "image" : "assets/icons/ic_graduation.png"
    },
    {
      "title" : "find a NEWS",
      "content" : "You can find best news from our tools",
      "image" : "assets/icons/ic_boy.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('onboarding'),
      ),
      body: PageView.builder(
         itemCount: onBoardingdata.length,
        itemBuilder: (context,index){
          return Container(
            decoration: BoxDecoration(

              image: DecorationImage(image: Image.asset(onBoardingdata[index]['image']).image,fit: BoxFit.fill)),
          );


    }
      ),
    );
  }
}



