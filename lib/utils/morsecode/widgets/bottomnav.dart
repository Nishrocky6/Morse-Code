import 'package:flutter/material.dart';
import 'package:morse_code_converter/pages/home.dart';
import 'package:morse_code_converter/utils/morsecode/morse_code_converter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;

  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Bottom Nav')),
      body: PageView(
        controller: pageController,
        children: [
          const MyHome(),
          MorseCodeApp(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.code,
              ),
              label: 'Code Converter'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Color(0xff00c9ff),
        unselectedItemColor: Color.fromARGB(255, 30, 33, 33),
        onTap: onTapped,
      ),
    );
  }
}
