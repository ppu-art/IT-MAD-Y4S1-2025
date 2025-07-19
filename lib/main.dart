import 'package:flutter/material.dart';
import 'package:mad/otp_screen.dart';
import 'package:mad/route/app_route.dart';
import 'package:mad/screens/home_screen.dart';
import 'package:mad/screens/main_screen.dart';
import 'package:mad/screens/splash_screen.dart';
import 'package:mad/wigets/pinput_widget.dart';

void main() {
  // Make UI is ready in app.
  WidgetsFlutterBinding.ensureInitialized();

  // Root tree
  runApp(App());
}

class App extends StatelessWidget {
  final screen = MainScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Option1
      // home: screen,

      // Option2
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.generateRoute,
      navigatorKey: AppRoute.key,

      // Option3
      // routes: {
      //   '/' : (context) => SplashScreen(),
      //   '/MainScreen' : (context) => MainScreen()
      // },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 84, 3, 223),
        ),
        useMaterial3: false,
        fontFamily: 'NotoSansKhmer',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
