import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay and then navigate to the dashboard screen
    Future.delayed(Duration(seconds: 15), () {
      Navigator.pushReplacementNamed(context, '/dashboard');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 0, 0), // Red background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/shopicon.png', // Replace with the actual path to your shopping cart icon
              color: Colors.white, // White color for the icon
              // height: 100,
              // width: 60,
            ),
            SizedBox(height: 4,),
            Center(
              child: SizedBox( 
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Bobbers',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Monitoring business in the digital realm,', textStyle: TextStyle( fontSize: 15)),
                    TyperAnimatedText('Turning data into insights,'),
                    TyperAnimatedText('and insights into success,'),
                    // TyperAnimatedText('-W.Edwards Deming'),
                  ],
                  onTap: () {
                   print("Tap Event");
                  },
                  ),
                  ),
          
               ),
            ),
            
          //   AnimatedTextKit(
          //   animatedTexts: [
          //    RotateAnimatedText('Business Monitoring app'),
          //   ]
          //   ),
          ],
        ),
      ),
    );
  }
}
