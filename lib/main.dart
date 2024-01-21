import 'package:flutter/material.dart';
import 'package:smartbapp/screens/dashboardScreen.dart';
import 'package:smartbapp/screens/employeeScreen.dart';
import 'package:smartbapp/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(255, 252, 0, 0),
      title: 'SmartBApp',
      home: Container(
        color: Colors.red, // Set the background color to match the splash screen
        child: SplashScreen(), // Show the splash screen initially
      ), // Show the splash screen initially
      routes: {
        '/dashboard': (context) => DashboardScreen(),
        '/employee': (context) => EmployeeScreen(),
        // Add more routes for other screens as needed
      },
    );
  }
}
