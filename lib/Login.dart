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
      title: 'fristApp',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  var _isvisible = false;
  var nameController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/nature_beautiful.png'),
                    radius: 120,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Login Now', style: TextStyle(fontSize: 36,
                        fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('Please enter the details below to continue'),
                    SizedBox(height: 10,),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        labelText: "Name",
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
                      obscureText: _isvisible ? false : true,
                      controller: passController,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelText: "Password",
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            _isvisible = !_isvisible;
                          });
                        },
                          icon: Icon(
                            _isvisible ? Icons.visibility : Icons
                                .visibility_off, color: Colors.grey,),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: () {},
                          child: Text('Forgot Password?', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF80849),
                          ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {}, child: Text('Login', style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffF80849),
                          foregroundColor: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(text: TextSpan(
                        text: 'Don\'t have an account!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Register',
                            style: TextStyle(
                                color: Color(0xffF80849),
                                fontSize: 18
                            ),
                          ),
                        ]
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
