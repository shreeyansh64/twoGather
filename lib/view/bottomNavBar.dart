import 'package:flutter/material.dart';
import 'package:two_gather/view/homePage.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: Theme(
  data: Theme.of(context).copyWith(
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
  ),
  child: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndex,
    onTap: (value) => setState(() => currentIndex = value),
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.white), label: "Fav"),
      BottomNavigationBarItem(icon: Icon(Icons.book, color: Colors.white), label: "Book"),
      BottomNavigationBarItem(icon: Icon(Icons.message, color: Colors.white), label: "Msg"),
      BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white), label: "User"),
    ],
  ),
)

    );
  }

  final _pages = [
    HomePage(),
    Center(child: Text("Fav")),
    Center(child: Text("Add post")),
    Center(child: Text("Message")),
    Center(child: Text("User")),
  ];
}
