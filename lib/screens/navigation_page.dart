import 'package:flutter/material.dart';
import '../config/app_color.dart';
import '../widgets/custom_icon.dart';
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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        extendBody: true,
        body: screens[index], // Use the 'screens' List<Widget>
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1,
                  offset: Offset(
                    0,
                    0,
                  ),
                )
              ]),
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: TabBar(
            
            indicatorColor: primary,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            onTap: _onItemTapped, // Handle tab bar item taps
            tabs: [
              const Tab(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: CustomIcon(
                  asset: 'assets/readbook.png',
                  index: index,
                  myIndex: 1,
                ),
              ),
              Tab(
                child: CustomIcon(
                  asset: 'assets/note.png',
                  index: index,
                  myIndex: 2,
                ),
              ),
              Tab(
                child: CustomIcon(
                  asset: 'assets/bookmark.png',
                  index: index,
                  myIndex: 3,
                ),
              ),
              Tab(
                child: CustomIcon(
                  asset: 'assets/person.png',
                  index: index,
                  myIndex: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
