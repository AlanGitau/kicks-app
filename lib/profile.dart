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
             
                },
                ),
             ),
           ),
           
        ],
      ),
    );
  }
}