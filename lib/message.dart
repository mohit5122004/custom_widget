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
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(65),
    child: AppBar(
      elevation: 1,
      leading: Padding(
        padding: EdgeInsets.only(top: 10,left: 5),
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new,size: 25,
          ),
        ),
      ),
      leadingWidth: 20,
         title: Padding(
        padding: EdgeInsets.only(top: 6),
           child: Row(
             children: [
               ClipRRect(borderRadius: BorderRadius.circular(30),
               child: Image.asset("assets/icons/ic_avatar.png",
               height: 45,
               width: 45,
               ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 10.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Mohit rai",style: TextStyle(fontSize: 19,),
                     ),
                     SizedBox(height: 5,),
                     Text('Online',style: TextStyle(fontSize: 15,color: Colors.grey.withOpacity(0.8)),),
                   ],
                 ),
               ),
             ],
           ),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 25),
          child: Icon(Icons.video_call,size: 30,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 25,right: 20),
          child: Icon(Icons.call_sharp,size: 30,),
        ),
      ],
    ),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 padding: EdgeInsets.all(8),
                 margin: EdgeInsets.all(8),
                 child: Text('New message',style: TextStyle(fontSize: 23),
                 ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                   ),
               Container(
                 padding: EdgeInsets.all(8),
                 margin: EdgeInsets.all(8),
                 child: Text('New message',style: TextStyle(fontSize: 23),
                 ),
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Align(
                 alignment: Alignment.centerRight,
                 child:  Container(
                   padding: EdgeInsets.all(8),
                   margin: EdgeInsets.all(8),
                   child: Text('New message',style: TextStyle(fontSize: 23),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),
                 margin: EdgeInsets.all(8),
                 child: Text('New message',style: TextStyle(fontSize: 23),
                 ),
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Align(
                 alignment: Alignment.centerRight,
                 child:  Container(
                   padding: EdgeInsets.all(8),
                   margin: EdgeInsets.all(8),
                   child: Text('New message',style: TextStyle(fontSize: 23),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),
                 margin: EdgeInsets.all(8),
                 child: Text('New message',style: TextStyle(fontSize: 23),
                 ),
                 decoration: BoxDecoration(
                   color: Colors.grey[300],
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Align(
                 alignment: Alignment.centerRight,
                 child:  Container(
                   padding: EdgeInsets.all(8),
                   margin: EdgeInsets.all(8),
                   child: Text('New message',style: TextStyle(fontSize: 23),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
               Align(
                 alignment: Alignment.centerRight,
                 child:  Container(
                   padding: EdgeInsets.all(8),
                   margin: EdgeInsets.all(8),
                   child: Text('New message',style: TextStyle(fontSize: 23),
                   ),
                   decoration: BoxDecoration(
                     color: Colors.grey[300],
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),
               ),
             ],
           ),
         ),


      Container(height: 60,
      color: Colors.grey[100],
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.send),
          ),
        ],
      ),
      ),

       ],
      ),
    );

  }
}

