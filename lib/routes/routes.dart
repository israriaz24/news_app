import 'package:flutter/material.dart';
import 'package:news_app/features/splashscreen/view/splashscreen.dart';
import 'package:news_app/routes/routes_name.dart';

import '../features/authentication/view/Login.dart';
import '../features/discover/view/discover.dart';
import '../features/feed/view/feed_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.feed:
        return MaterialPageRoute(
            builder: (BuildContext context) => const FeedScreen());
      case RoutesName.discover:
        return MaterialPageRoute(
            builder: (BuildContext context) => DiscoverScreen(
                  category: [],
                ));

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
