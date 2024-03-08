import 'package:flutter/material.dart';
import 'package:promilo/screens/meetuppage/meetup_page.dart';

import '../description/description_page.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedIndex=2;
  final screens=[
    Center(child: Text('1')),
    Center(child: Text('2')),
    MeetupPage(),
    DescriptionPage(),
    Center(child: Text('4')),
    Center(child: Text('5')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        
        backgroundColor: Colors.white,
        height: 60,
        
        elevation: 0,
        selectedIndex: selectedIndex,
        
        // onDestinationSelected: (index) {
        //   setState(() {
        //     selectedIndex=index;
        //   });
        // },
        // onDestinationSelected: (value) {
        //   return MeetupPage();
        // },
        destinations:const [
        NavigationDestination(icon: Icon(Icons.person), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.menu), label: 'prolet'),
        NavigationDestination(icon: Icon(Icons.handshake), label: 'Meetup'),
        NavigationDestination(icon: Icon(Icons.file_copy_sharp), label: 'Explore'),
        NavigationDestination(icon: Icon(Icons.person), label: 'User'),
        
      ]),
      body: screens[selectedIndex],
    );
  }
}
