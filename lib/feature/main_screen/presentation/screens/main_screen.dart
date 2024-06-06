import 'package:flutter/material.dart';
import 'package:test_task/feature/favorites_screen/screens/favorites_screen.dart';
import 'package:test_task/feature/tape_screen/presentation/screens/tape_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    TapeScreen(),
    FavoritesScreen(),
    // Add other screens here
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: _changeTab,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.red, fontSize: 10),
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/tape2.png',
                width: 25,
                height: 25,
              ),
              // activeIcon: , нужно получить эти иконки в красном цвете
              label: 'Лента',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  'assets/images/menu.png',
                  width: 25,
                  height: 25,
                ),
              ),
              label: '',
            ),
            //
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Профиль',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Корзина',
            ),
          ]),
    );
  }
}
