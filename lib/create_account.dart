
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
        useMaterial3: true
      ),
      home: HomeAccount(),
    );
  }
}

class HomeAccount extends StatefulWidget {
  const HomeAccount({super.key});

  @override
  State<HomeAccount> createState() => _HomeAccountState();
}

class _HomeAccountState extends State<HomeAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
     body: Stack(
       children: [
         Image(
           height: double.infinity,
           width: double.infinity,
           image: AssetImage("assets/images/download.png"),fit: BoxFit.cover,),
         Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 colors: [
                   Colors.black,
                   Colors.black.withOpacity(0.8),
                   Colors.black.withOpacity(0.15),
                   Colors.black.withOpacity(0.5),
                 ],
               begin: Alignment.bottomCenter,
               end: Alignment.topCenter,
             )
           ),
         ),
         Align(
           alignment: Alignment.center,
             child: Image(
                 height: 100,
                 width: 100,
                 image: AssetImage("assets/images/download (1).png"))),
       ],
     ),
    );
  }
}

