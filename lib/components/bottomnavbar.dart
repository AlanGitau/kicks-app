import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const GNav(
        padding: EdgeInsets.all(7),
        gap:8,
        backgroundColor: Color.fromARGB(255, 223, 213, 213),
        tabBackgroundColor: Colors.grey,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            ),
          GButton(
            icon: Icons.favorite,
            text: 'Favourites',
            ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'cart',
            ),
          GButton(
            icon: Icons.account_circle,
            text: 'Profile',
            ),
        ]),
    );
  }
}