import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        backgroundColor:Colors.blueGrey,
        title: const Text('kicks soles'),
        ),  
      body: Column(
        children: [
          Container(
        child: const ListTile(
          
          leading: Icon(Icons.person),
          trailing: Icon(Icons.menu),
        ),
        ),
        const SizedBox(height: 10,),
          Container(
            //alignment:Alignment.center,
            height: 60,width:double.infinity,
            padding: EdgeInsets.all(10),
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
      bottomNavigationBar: const GNav(
        padding: EdgeInsets.all(7),
        gap:8,
        backgroundColor: Colors.blueGrey,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            ),
          GButton(
            icon: Icons.favorite,
            text: 'Favourite',
            ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            ),
          GButton(
            icon: Icons.account_circle,
            text: 'Profile',
            ),
        ]),
        
      );
      
  }
}