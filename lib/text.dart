
import 'package:blue/onboarding.dart';
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
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var namecontroller = TextEditingController();
  var passcontroller = TextEditingController();
  bool isEnabled = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textfield'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 11,),
            TextField(
             maxLength: 10,
              maxLines: 4,
              controller: namecontroller,
              // onChanged: (value){
              //   print(value);
              // },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.grey,
                      width: 2),
                ),
                counterText: "",
                fillColor: Colors.black,
                filled: true,
                prefix: Text('Mr.'),
                suffixText: '@gmail.com',
                prefixIcon: Icon(Icons.account_circle),
                prefixIconColor: Colors.blue,
                // suffix: Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text("\n\n\n"),Text("@wscubetech"),
                //   ],
                // ),
                enabled: isEnabled,
                label: Text('Name'),
                labelStyle: TextStyle(color: isEnabled ? Colors.blue: Colors.grey),
                hintText:  'enter your name',
              ),
            ),
            SizedBox(
              height: 11,
            ),

            TextField(
              controller: passcontroller,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.number,
              // onChanged: (value){
              //   print(value);
              // },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility_off),
                prefixIconColor: Colors.blue,
                enabled: isEnabled,
                label: Text('Password'),
                labelStyle: TextStyle(color: isEnabled ? Colors.blue: Colors.grey),
                hintText:  'enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.grey,
                  width: 2),
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            ElevatedButton(onPressed: (){
              print("${namecontroller.text.toString()},${passcontroller.text.toString()}");
            },
                child: Text('tap')),
            
            

            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeScreen()));
                  },
                      child: Text('show me')),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

