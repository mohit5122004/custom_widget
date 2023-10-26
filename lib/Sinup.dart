import 'package:blue/Login_Screen.dart';
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
      home: HomeSinupAccount(),
    );
  }
}

class HomeSinupAccount extends StatefulWidget {
  const HomeSinupAccount({super.key});

  @override
  State<HomeSinupAccount> createState() => _HomeAccountState();
}

class _HomeAccountState extends State<HomeSinupAccount> {

  var emailController = TextEditingController();
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sinup',style: TextStyle(color: Colors.white,fontSize: 30,
                    fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: ' Enter Email Address',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                      ) ,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: ' Enter Username',
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal
                      ) ,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.normal,
                          color: Colors.black),
                      hintText: "Enter your Password",
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.normal,
                          color: Colors.black),
                      hintText: "Enter your Confirm Password",
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 19,right: 19),
                  child: Row(
                    children: [
                      Text('Remember me',style: TextStyle(
                          color: Colors.grey),
                      ),
                      Spacer(),
                      Text('Forgot Password',style: TextStyle(color: Colors.grey),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               Container(
                 width: 500,
                 child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeAccount()));
                 },
                     child: Text('Loginup'
                       '',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),)),
               ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('-------------',style: TextStyle(fontSize: 30,color: Colors.white,),),
                      Text('Or Login With',style: TextStyle(color: Colors.white,),),
                      Text('-----------',style: TextStyle(fontSize: 30,color: Colors.white,),),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF757575),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.apple_outlined,color: Colors.white,size: 40,),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF757575),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.g_mobiledata,color: Colors.white,size: 40,),
                    ),
                    Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF757575),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.facebook_sharp,color: Colors.white,size: 40,),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 100),
                  child: Row(
                    children: [
                      Text('Already have an account?',style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 5,),
                      Text('Loginup',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.green),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
