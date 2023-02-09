
import 'package:flutter/material.dart';

class NetflixBottomNavigationBar extends StatefulWidget {
  const NetflixBottomNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NetflixBottomNavigationBarState createState() => _NetflixBottomNavigationBarState();
}

class _NetflixBottomNavigationBarState extends State<NetflixBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
         label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
         label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
        label: 'Coming Soon',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          
           label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
