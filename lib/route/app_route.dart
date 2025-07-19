import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mad/screens/design_faculty_screen.dart';
import 'package:mad/screens/it_faculty_detail_screen.dart';
import 'package:mad/screens/it_faculty_screen.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String mainScreen = "/MainScreen";
  static const String itFacultyScreen = "/ItFacultyScreen";
  static const String designFacultyScreen = "/DesignFacultyScreen";
  static const String itFacultyDetailScreen = "/ItFacultyDetailScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashScreen:
        return _buildRoute(routeSettings, SplashScreen());
      case mainScreen:
        return _buildRoute(routeSettings, MainScreen());
      case itFacultyScreen:
        return _buildRoute(routeSettings, ItFacultyScreen());
      case designFacultyScreen:
        return _buildRoute(routeSettings, DesignFacultyScreen());
      case itFacultyDetailScreen:
        return _buildRoute(routeSettings, ItFacultyDetailScreen());

      default:
        throw RouteException("Route is not found.");
    }
  }

  static Route<dynamic> _buildRoute(
    RouteSettings routeSettings,
    Widget newRoute,
  ) {
    final route = MaterialPageRoute(
      settings: routeSettings,
      builder: (context) => newRoute,
    );
    return route;
  }
}

class RouteException implements Exception {
  String message;

  RouteException(this.message);
}
