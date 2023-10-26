
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
        useMaterial3: true
      ),
      home: HomeButton(),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Button'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              //action
              print('hello flutter on dev');
            },
              child: Text("Add me",style: TextStyle(fontSize: 21),),
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shadowColor: Colors.grey,
                backgroundColor: Colors.grey,
                // minimumSize: Size(200, 50),
                // maximumSize: Size(400, 100),
                fixedSize: Size(200, 50),
                foregroundColor: Colors.black,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              print("Tapped on my Container");
            },
            child: Container(
              width: 200,
              height: 30,
              child: Center(child: Text('Add Me',style: TextStyle(fontSize: 14,color: Colors.white),)),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}








// Inkwell
// gesture










//          Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: ElevatedButton(onPressed: (){
//               //action
//               print('hello flutter on dev');
//             },
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//             Icon(Icons.add),
//             Text('Add me')
//     ],
//     ),
//             ),
//           ),
//           TextButton(onPressed: (){}, child: Text("click me")),
//           SizedBox(
//             width: 400,
//             child: OutlinedButton(onPressed: (){
//               print("Clicked on Outline btn!");
//             },
//                 child: Text("Press me")),
//           ),
//           IconButton(onPressed: (){
//             print("Information here");
//           },
//               icon: Icon(Icons.info_outline)),
//         ],
//       ),
//     );
//   }
// }
//
