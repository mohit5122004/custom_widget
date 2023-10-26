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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Calculator',style: TextStyle(fontSize: 41,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 21,
            ),
            TextField(
              onChanged: (value){

              },
            controller: no1Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('No1'),
              hintText: 'Enter No 1',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
              )
            ),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: no2Controller,
              decoration: InputDecoration(
                label: Text('No2'),
                hintText: 'Enter No 2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
         Row(
           children: [
             ElevatedButton(onPressed: (){
               int no1 = int.parse(no1Controller.text.toString());
               int no2 = int.parse(no2Controller.text.toString());

               int sum = no1+no2;
               print(sum);
               result = sum;
               setState(() {

               });
             },
                 child: Text('Add')),
             ElevatedButton(onPressed: (){
               int no1 = int.parse(no1Controller.text.toString());
               int no2 = int.parse(no2Controller.text.toString());

               int sum = no1-no2;
               print(sum);
               result = sum;
               setState(() {

               });
             },
                 child: Text('Sub')),
             ElevatedButton(onPressed: (){
               int no1 = int.parse(no1Controller.text.toString());
               int no2 = int.parse(no2Controller.text.toString());

               int sum = no1*no2;
               print(sum);
               result = sum;
               setState(() {

               });
             },
                 child: Text('Mul')),
             ElevatedButton(onPressed: (){
               int no1 = int.parse(no1Controller.text.toString());
               int no2 = int.parse(no2Controller.text.toString());

               double sum = no1/no2;
               print(sum);
               result = sum as int ;
               setState(() {

               });
             },
                 child: Text('Div')),
           ],
         ),
            SizedBox(
              height: 21,
            ),
            Text('Result : $result',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.green),)
          ],
        ),
      ),
    );
  }
}



