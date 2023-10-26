
import 'package:blue/Dropdown.dart';
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
      home: Dropdown(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialogue'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(
              context: context,
              builder: (context){
            return Container(
             child: AlertDialog(
               title: Text('Are you want to sure'),
               content: TextField(
                 onChanged: (value){

                 },
                 decoration: InputDecoration(
                   hintText: 'Enter folder name',

                 ),
               ),
               actions: [
                 TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                 },
                     child: Text('Ok')),
                 TextButton(onPressed: (){
                   Navigator.pop(context);
                 },
                     child: Text('NO')),
               ],
             ),
            );
            
          });
        },
            child: Text('show dialogue')),
      ),
    );
  }
}

