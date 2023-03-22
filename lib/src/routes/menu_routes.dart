import 'package:flutter/material.dart';

import '../pages/add_pages.dart';
import '../pages/card_pages.dart';
import '../pages/home_pages.dart';
import '../pages/login_pages.dart';
import '../pages/settings_pages.dart';
import '../pages/transactions_pages.dart';

class MenuRoutes extends StatefulWidget {
  final int index;
  const MenuRoutes({Key? key, required this.index}) : super(key: key);

  @override
  State<MenuRoutes> createState() => _MenuRoutesState();
}

class _MenuRoutesState extends State<MenuRoutes> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const AddsPages(),
      const HomePages(),
      const CardsPages(),
      const SettingsPages(),
      const TransactionsPages(),
      LoginPage(),
    ];
    return myList[widget.index];
  }
}
