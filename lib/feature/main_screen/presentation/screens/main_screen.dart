import 'package:flutter/material.dart';
import 'package:test_task/feature/basket_screen/presentation/screens/food_screen.dart';
import 'package:test_task/feature/basket_screen/presentation/screens/goods_screen.dart';
import 'package:test_task/feature/favorites_screen/presentation/screens/favorites_screen.dart';
import 'package:test_task/feature/main_screen/presentation/widget/overlay_button_widget.dart';
import 'package:test_task/feature/menu_sccreen/presentation/screens/menu_screens.dart';
import 'package:test_task/feature/profile_screen/presentation/screens/profile_screen.dart';
import 'package:test_task/feature/tape_screen/presentation/screens/tape_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  bool _isCartMenuOpen = false;

  final List<Widget> _pages = [
    const TapeScreen(),
    const FavoritesScreen(),
    const MenuScreen(),
    const ProfileScreen(),
    const GoodsScreen(),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
      _isCartMenuOpen = false;
    });
  }

  void _toggleCartMenu(BuildContext context) {
    setState(() {
      _isCartMenuOpen = !_isCartMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedTab],
          if (_isCartMenuOpen)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isCartMenuOpen = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(right: 12),
                color: Colors.transparent,
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 150,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OverlayButtonWidget(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const FoodScreen(),
                                ),
                              );
                            },
                            imageURL: 'assets/images/food.png',
                            title: 'Еда',
                          ),
                          const SizedBox(height: 10),
                          OverlayButtonWidget(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const GoodsScreen(),
                                ),
                              );
                            },
                            imageURL: 'assets/images/сosmetic.png',
                            title: 'Товары',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _changeTab,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 10),
        unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 10),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tape2.png',
              width: 25,
              height: 25,
            ),
            label: 'Лента',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/favorites_icon.png',
              width: 25,
              height: 25,
            ),
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
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile_icon.png',
              width: 25,
              height: 25,
            ),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                _toggleCartMenu(context);
              },
              child: Image.asset(
                'assets/images/basket_icon.png',
                width: 25,
                height: 25,
              ),
            ),
            label: 'Корзина',
          ),
        ],
      ),
    );
  }
}
