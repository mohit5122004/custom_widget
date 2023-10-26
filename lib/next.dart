



import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "firstapp",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: homePage(),
    );
    
  }
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body:Container(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                      Row(
                        children: [
                          Container(
                            color: Colors.pink,
                          ),
                        ],
                      ),
                        Container(
                          color: Colors.black,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),

          ],
        ),
      ),
    );
    
  }
}