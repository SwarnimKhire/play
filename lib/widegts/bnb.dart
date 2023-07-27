import 'package:flutter/material.dart';

import 'package:thursday/screens/home_page.dart';
import 'package:thursday/screens/onboarding.dart';
import 'package:thursday/screens/play_screen.dart';

Widget bnB({void Function(int)? ontap, required int selectedIndex}) {
  return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed, // Fixed
      elevation: 0,
      selectedItemColor: const Color(0xff371B34),
      unselectedItemColor: const Color(0xffCDD0E3),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 24,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note_rounded),
          label: 'music',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_rounded),
          label: 'account',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
      ],
      currentIndex: selectedIndex, //New

      onTap: ontap);
}

List<Widget> pageList = [
  const HomePage(),
  const Onboarding(),
  const PlayScreem(),
  // const Account(),
];
