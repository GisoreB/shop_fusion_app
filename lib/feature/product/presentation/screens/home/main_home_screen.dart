import 'package:flutter/material.dart';
import '../../../../../core/asset_constants.dart' as asset;

import 'cart/cart_screen.dart';
import 'home/home_screen.dart';
import 'order/order_screen.dart';
import 'profile/profile_screen.dart';
import 'wallet/wallet_screen.dart';

class MainHomeScreen extends StatefulWidget {
  static const routename = '/mainhomescreen';

  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    CartScreen(),
    const OrderScreen(),
    const WalletScreen(),
    const ProfileScreen()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: asset.introStyles(12),
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                asset.home,
                color: currentIndex == 0 ? Colors.black87 : Colors.black54,
                width: 25,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                asset.cart,
                color: currentIndex == 1 ? Colors.black87 : Colors.black54,
                width: 25,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Image.asset(
                asset.orders,
                color: currentIndex == 2 ? Colors.black87 : Colors.black54,
                width: 25,
              ),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: Image.asset(
                asset.wallet,
                color: currentIndex == 3 ? Colors.black87 : Colors.black54,
                width: 25,
              ),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: Image.asset(
                asset.profile,
                color: currentIndex == 4 ? Colors.black87 : Colors.black54,
                width: 25,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}