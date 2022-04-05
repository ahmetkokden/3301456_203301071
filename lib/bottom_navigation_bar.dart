import 'package:catchrop/profile.dart';
import 'package:flutter/material.dart';
import 'airdrop.dart';
import 'home.dart';
import 'learn.dart';
import 'market.dart';

class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {
  int current_page = 0;
  Widget currentPage = const home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "AnaSayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories_outlined),
            label: "Öğren",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats_outlined),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: "Airdrop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profil",
          ),

        ],
        iconSize: 23,
        selectedFontSize: 11,
        currentIndex: current_page,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (int val) {
          setState(() {
            current_page = val;
            if (current_page == 0) currentPage = const home();
            if (current_page == 1) currentPage = const learn();
            if (current_page == 2) currentPage = const market();
            if (current_page == 3) currentPage = const airdrop();
            if (current_page == 4) currentPage = const profile();
          });
        },
      ),
      body: currentPage,
    );
  }
}

