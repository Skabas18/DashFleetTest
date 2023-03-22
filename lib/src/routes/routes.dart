import 'package:flutter/cupertino.dart';

import '../pages/home_pages.dart';
import '../pages/login_pages.dart';
import '../pages/menu_pages.dart';

final routes = <String, WidgetBuilder>{
  "Login": (BuildContext context) => LoginPage(),
  "Home": (BuildContext context) => const HomePages(),
  "Menu": (BuildContext context) => const MenuPage()
};
