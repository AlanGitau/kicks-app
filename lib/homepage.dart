import 'package:flutter/material.dart';
import 'components/bottomnavbar.dart';
import 'shop.dart';
import 'favorites.dart';
import 'cart.dart';
import 'profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void navigatePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Shop(),
    Favorites(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade100,
        title: const Text('kicks soles'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      //side drawer
      drawer: Drawer(
        backgroundColor: Colors.grey.shade100,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.network(
                'https://pngimg.com/uploads/nike/nike_PNG11.png',
                color: Colors.black,
                width:150,
                height: 130,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
            ),
             const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.help_outline_sharp, color: Colors.black),
                title: Text('Help & support', style: TextStyle(color: Colors.black)),
              ),
            ),
             const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.info_outline, color: Colors.black),
                title: Text('About us ', style: TextStyle(color: Colors.black)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('settings', style: TextStyle(color: Colors.black)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.logout_rounded, color: Colors.black),
                title: Text('Logout', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: navigatePage,
      ),
    );
  }
}