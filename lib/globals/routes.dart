import 'package:exam/views/cartPage.dart';
import 'package:flutter/material.dart';

import '../views/detailPage.dart';
import '../views/myHome.dart';

class Routes{
  static String myHome = '/';
  static String detail_page = 'detail_page';
  static String cart_page = 'cart_page';

  static Map<String,WidgetBuilder> myRoutes = {
    myHome : (context) => const MyHome(),
    detail_page : (context) => const DetailPage(),
    cart_page : (context) => const CartPage()
  };
}