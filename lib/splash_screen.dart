import 'package:quiz_it/const/images.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate after 2 seconds
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, '/next');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8, // responsive
              child: Image.asset(
                homelogo,
                fit: BoxFit.contain,
                width: 250,
                height: 250,
              ),
            ),
            Text(
              'Quiz IT',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04, // responsive
                fontFamily: 'quick_bold',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Test your tech knowledge with Quiz Informatics!',
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  speed: const Duration(milliseconds: 80),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ],
        ),
      ),
    );
  }

}
