import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_userside/screens/cart_screen.dart';
import 'package:shop_userside/screens/home_screen.dart';
import 'package:shop_userside/screens/profile_screen.dart';
import 'package:shop_userside/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens;
  int currentScreen = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = [HomeScreen(), SearchScreen(), CartScreen(), ProfileScreen()];

    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller, children: screens),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        height: kBottomNavigationBarHeight,
        selectedIndex: currentScreen,
        onDestinationSelected: (index) {
          
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_filled,fontWeight: FontWeight.bold,),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        
           NavigationDestination(
            selectedIcon: Icon(Icons.search,fontWeight: FontWeight.bold,),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
             NavigationDestination(
            selectedIcon: Icon(Icons.shop_2,fontWeight: FontWeight.bold,),
            icon: Icon(Icons.shop_2_outlined),
            label: 'Cart',
          ),
             NavigationDestination(
            selectedIcon: Icon(Icons.person,fontWeight:FontWeight.bold,),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
