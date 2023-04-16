import 'package:flutter/material.dart';
import 'package:stock_market/presentation/stock_trade_screen_default_screen/stock_trade_screen_default_screen.dart';

class AppRoutes {
  static const String stockTradeScreenDefaultScreen =
      '/stock_trade_screen_default_screen';

  static Map<String, WidgetBuilder> routes = {
    stockTradeScreenDefaultScreen: (context) => StockTradeScreenDefaultScreen()
  };
}
