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
        leading: Builder(
          builder: (context) {
            return IconButton(icon: const Icon(Icons.menu), 
              onPressed: () {  
                Scaffold.of(context).openDrawer();
              },);
          }
        ),
        ),  
        drawer: Drawer(
          backgroundColor: Colors.grey.shade900,
          child: Column(
            children: [
              DrawerHeader(child: Image.network('https://pngimg.com/uploads/nike/nike_PNG11.png',
              color: Colors.pink.shade50,)
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text('Home', style: TextStyle(color: Colors.white),),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title: Text('settings', style: TextStyle(color: Colors.white),),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.logout_rounded, color: Colors.white),
                  title: Text('Logout', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],),
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