import 'package:quiz_it/const/colors.dart';
import 'package:quiz_it/const/images.dart';
import 'package:quiz_it/const/text_style.dart';
import 'package:quiz_it/splash_screen.dart';
import 'package:quiz_it/quiz_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.orange));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner : false,
      routes: {
        '/next' : (context) => const QuizApp(),
      },
    );
  }
}


class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [bgWhite, bgGray],
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black45, width: 2),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.home,
                      color: Colors.black,
                      size: 28,
                    )),
              ),
              Image.asset(
                homelogo,
              ),
              const SizedBox(height: 20),
              normalText(color: Colors.black87, size: 20, text: "Welcome to"),
              headingText(color: Colors.black, size: 35, text: "Quiz IT"),
              const SizedBox(height: 20),
              normalText(
                  color: Colors.black87,
                  size: 20,
                  text: "Do You Feel the Greatest in the Field IT? Here You'll Face Our Most Difficult Questions!"),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizScreen()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    width: size.width - 100,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: headingText(color: Colors.white, size: 18, text: "Continue"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}