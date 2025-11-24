import 'package:flutter/material.dart';
import 'package:two_gather/styles/appColors.dart';
import 'package:two_gather/view/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background
      ),
      debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
