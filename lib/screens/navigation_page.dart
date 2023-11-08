import 'package:flutter/material.dart';

import 'home.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;

  List<Widget> screens = [
    // Define the screens as a List<Widget>
    const Home(),
    const Home(),
    const Home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index], // Use the 'screens' List<Widget>
      bottomNavigationBar: Material(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TabBar(
              onTap: _onItemTapped, // Handle tab bar item taps
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.home),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
