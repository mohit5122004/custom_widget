import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "FirstApp",
     theme: ThemeData(primarySwatch: Colors.grey),
     home: HomePage(),
   );
  }
 }

 class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body:Container(
        height: 500,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(19),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe6f1fa),
                        border: Border.all(
                          width: 1
                        ),
                      ),
                      child: Center(child: Text('Strawberry Pavlova',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe6f1fa),
                        border: Border.all(
                          width: 1
                        ),
                      ),
                      child: Center(child: Text('Pavlova is a meringue-based \n dessert named after the Russian\n ballerine Anna Pavflova.\n Pavlova features a crisp crust and\n soft,light inside topped with fruit\n and whipped cream.',style: TextStyle(fontSize: 18,fontFamily: "mainFont",fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                    ),
                     Container(
                       margin: EdgeInsets.only(top: 11),
                       width: double.infinity,
                       decoration:BoxDecoration(
                         color: Color(0xffe6f1fa),
                         border: Border.all(
                           width: 1
                         ),
                       ) ,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Row(
                             children: [
                             Icon(Icons.star,size: 16,),
                               Icon(Icons.star,size: 16,),
                               Icon(Icons.star,size: 16,),
                               Icon(Icons.star,size: 16,),
                               Icon(Icons.star,size: 16,),
                             ],
                           ),
                           Text('170 Reviews',style: TextStyle(fontFamily: "mainFont",fontWeight: FontWeight.w900),)
                         ],
                       ),
                     ),
                    Container(
                      padding: EdgeInsets.all(11),
                      margin:EdgeInsets.only(top: 11) ,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffe6f1fa),
                        border: Border.all(
                          width: 1
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.kitchen,color: Colors.green,),
                              SizedBox(height:11 ),
                              Text("PREP:",style: TextStyle(fontFamily: "mainFont",fontWeight: FontWeight.w900),),
                              SizedBox(height:11 ),
                              Text('25 min',),
                              SizedBox(height:11 ),


                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer,color: Colors.green,),
                              SizedBox(height:11 ),
                              Text("COOK:",style: TextStyle(fontFamily: "mainFont",fontWeight: FontWeight.w900),),
                              SizedBox(height:11 ),
                              Text('1 hr'),
                              SizedBox(height:11 ),


                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant,color: Colors.green,),
                              SizedBox(height:11 ),
                              Text("FEEDS:",style: TextStyle(fontFamily: "mainFont",fontWeight: FontWeight.w900),),
                              SizedBox(height:11 ),
                              Text('4-6'),
                              SizedBox(height:11 ),


                            ],
                          ),
                        ],
                      ),
                    ),
                      ],
                ),

              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Image.asset("assets/images/straw.png",fit: BoxFit.fill,),
              ),
            ),
          ],
        ),
      ),
    );

    }
}
