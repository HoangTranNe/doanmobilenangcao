
import 'package:flutter/material.dart';
import 'package:main_project/constants.dart';
import 'package:main_project/screen/home_screen.dart';
import 'package:main_project/screen/cart_screen.dart';
import 'package:main_project/screen/favorite_screen.dart';
import 'package:main_project/screen/user_screen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainApp(),
 ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;

  List<Widget> pages = [
     const HomeScreen(),
     const CartScreen(),
     const FavoriteScreen(),
     const UserScreen(),
  ];
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      theme: kDarkTheme,
      darkTheme: kLightTheme,
      themeMode: themeNotifier.value,
      home: Scaffold(
        body: Center(
          child: pages[currentPageIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          iconSize: 30,
          selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          currentIndex: currentPageIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart_fill), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
