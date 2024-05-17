import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome to Home Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set the initial index of the selected item
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Handle navigation when a bottom navigation bar item is tapped
          // Example:
          // if (index == 0) {
          //   Navigator.pushReplacementNamed(context, '/home');
          // } else if (index == 1) {
          //   Navigator.pushReplacementNamed(context, '/search');
          // } else if (index == 2) {
          //   Navigator.pushReplacementNamed(context, '/profile');
          // }
        },
      ),
    );
  }
}
