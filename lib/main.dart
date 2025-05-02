
import 'package:doctor_app/presentation/screens/home_screen.dart';
import 'package:doctor_app/presentation/screens/login_screen.dart';
import 'package:doctor_app/presentation/screens/signup_screen.dart';
import 'package:doctor_app/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';




void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'doctor_app_rami',
      home: SplashScreen() ,
      //home: HomeScreen() ,
      debugShowCheckedModeBanner: false,

    );
  }
}
