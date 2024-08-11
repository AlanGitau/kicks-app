import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          //LIST TILE DO DISPLAY EMAIL AND EDIT ACCOUNT
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: ListTile(
              contentPadding:EdgeInsets.only(right: 10),
              tileColor: Colors.grey.shade200,
              leading: Icon(Icons.person_2_outlined),
              title: Text('Alan Gitau',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
              subtitle: Text('Lewisgitau99@gmail.com'),
              trailing: IconButton(
                icon:Icon(Icons.edit) ,
                onPressed:(){
             //should implement functionality
                },
                ),
             ),
           ),
           SizedBox(height:10),

           ListTile(
             leading: Icon(Icons.map_outlined),
             title: Text('Location Address'),
             onTap:(){
              //should implement functionality
             }
           ),

           SizedBox(height:10),

           ListTile(
             leading: Icon(Icons.history),
             title: Text('Order History'),
             onTap:(){
              //should implement functionality
             }
           ),

           SizedBox(height:10),

           ListTile(
             leading: Icon(Icons.credit_card),
             title: Text('Payment Information'),
             onTap:(){
              //should implement functionality
             }
           ),
           SizedBox(height:10),

           ListTile(
             leading: Icon(Icons.delete_forever),
             title: Text('Delete Account'),
             onTap:(){
              //should implement functionality
             }
           )
           
        ],
      ),
    );
  }
}