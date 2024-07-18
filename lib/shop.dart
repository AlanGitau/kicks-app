import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children:[
          Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Row(
              children: [
                Text('Sneakers,what are you looking for?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Spacer(),
                IconButton(
                  onPressed:(){
                    //add functionality
                  }, 
                  icon: Icon(Icons.notifications),)
              ],
            )
          ),
          //SEARCH BAR
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 20,),
                Text('Search'),
                ],
              ),
          ),
        ]
      ),
    );
  }
}