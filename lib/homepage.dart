import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'components/bottomnavbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar:AppBar(
        backgroundColor:Colors.blueGrey,
        title: const Text('kicks soles'),
        ),  
      body: Column(
        children: [
         
        const SizedBox(height: 10,),
          Container(
            //alignment:Alignment.center,
            height: 60,width:double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
            //color: Colors.white,
           child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Hello lets find some fresh kicks for you ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        TextSpan(
          text: 'Authentic Kicks: ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        TextSpan(
          text: 'Guaranteed Quality & Fast Shipping.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ],
    ),
  ),
            ),
        ],
      ),
       
        //bottomNavigationBar
      bottomNavigationBar: const Bottomnavbar(),
        
      );
      
  }
}