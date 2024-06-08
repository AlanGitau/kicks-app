import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen1/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.adobe_rounded,
            size: 100,
            color: Colors.cyan,
            ),
            Text(
              'Welcome Hello!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              'We are thrilled to have you here',
              style: TextStyle(
                fontSize: 15),
            ),
            SizedBox(height: 40),
            //enter email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.circular(12)
              ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            //Enter password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.circular(12)
                  ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            //sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage())
                    );        
                  },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(12),
               ),
              child: Text(
                'Sign In',
              style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
                    ),
                  ),
               ),
             ),
            ),
            SizedBox(height: 15),
            //not a member sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                style: TextStyle(
                  fontWeight: FontWeight.bold 
                  ),
                ),
                Text('RegisterNow',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold 
                  ),
                ),
                
              ],
            ),

          ],
        ),
      ),
    );
  }
}