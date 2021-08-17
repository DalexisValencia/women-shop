import 'package:flutter/material.dart';

class StockBottomNavigationBar extends StatelessWidget {
  const StockBottomNavigationBar({Key key}) : super(key: key);
  final Color navBarBgColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      currentIndex: 2,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: navBarBgColor,
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
            size: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          backgroundColor: navBarBgColor,
          icon: Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          backgroundColor: navBarBgColor,
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          backgroundColor: navBarBgColor,
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.black,
            size: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          backgroundColor: navBarBgColor,
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
            size: 24,
          ),
          label: '',
        ),
      ],
    );
  }
}
