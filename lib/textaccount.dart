import 'package:blue/create_account.dart';
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
      home: HomePageAccount(),
    );
  }
}

class HomePageAccount extends StatefulWidget {
  const HomePageAccount({super.key});

  @override
  State<HomePageAccount> createState() => _HomePageAccountState();
}

class _HomePageAccountState extends State<HomePageAccount> {
  bool isEnabled  = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Create account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text('Anywhere app'),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text('Home'),
                    SizedBox(
                      width: 50,
                    ),
                    Text('Join'),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text('START FOR FREE'),
              ),SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Create new account',style: TextStyle(fontWeight:FontWeight.w900,fontSize: 40),),
              ),
                SizedBox(height: 10,
                ),
                Container(
                  child: Text('Already A Member ?Log in'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          enabled: isEnabled,
                          decoration: InputDecoration(
                            label: Text(' First Name'),
                           hintText: 'Enter your name',
                            suffixIconColor: Colors.blue,
                            labelStyle: TextStyle(color:  Colors.red),
                            suffixIcon: Icon(Icons.account_box_sharp),
                            // filled: true,
                            // fillColor: Colors.black,
                            border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.red,
                              width: 6),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            hintText: 'Enter your last name',
                            suffixIconColor:  Colors.blue,
                            suffixIcon: Icon(Icons.account_box_sharp),
                            // fillColor: Colors.black,
                            // filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(color: Colors.red,
                              width: 3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
             SizedBox(
               height: 10,
             ),
             TextField(
               decoration: InputDecoration(
                 labelText: 'Email',
                 hintText: 'Enter your Email',
                 suffixIconColor: Colors.blue,
                 suffixIcon: Icon(Icons.mail_lock),
                 // filled: true,
                 // fillColor: Colors.black,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21),
                 ),
               ),
             ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscuringCharacter: '*',
                obscureText: true,

                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIconColor: Colors.blue,
                  suffixIcon: Icon(Icons.visibility),
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeAccount()));
                  }, child: Text('change method')),

                  ElevatedButton(onPressed: (){}, child: Text('change method')),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

