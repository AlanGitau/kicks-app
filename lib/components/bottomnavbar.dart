import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 223, 213, 213),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          padding: EdgeInsets.all(7),
          gap: 8,
          backgroundColor: Color.fromARGB(255, 223, 213, 213),
          tabBackgroundColor: Colors.lightBlue.shade50,
          selectedIndex: selectedIndex,
          onTabChange: onTabChange,
          tabs: [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.favorite, text: 'Favourites'),
            GButton(icon: Icons.shopping_cart, text: 'Cart'),
            GButton(icon: Icons.account_circle, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}