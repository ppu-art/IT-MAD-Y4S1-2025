
import 'package:flutter/material.dart';
import 'package:mad/route/app_route.dart';
import 'package:mad/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){

          // Navigation using Push 
          final route  = MaterialPageRoute(builder: (context) => MainScreen());
          // //Navigator.push(context, route);
          // Navigator.of(context).push(route);

          // Navigation using Push Replacement
          //Navigator.pushReplacement(context, route);

          // Navigation using PushName
          // Navigator.pushNamed(context, '/MainScreen');
          // Navigator.pushNamed(context, AppRoute.mainScreen);
          
          // Navigation using PushName Replacement
          //Navigator.pushReplacementNamed(context, AppRoute.mainScreen);

          // Using Navigation Key
          AppRoute.key.currentState?.pushReplacementNamed(AppRoute.mainScreen);

        }, child: Text("Get Started")),
      ),
    );
  }
}