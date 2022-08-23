import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/HomePage.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  _StartedPageState createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 220, right: 15, left: 15),
              child: Column(
                children: [
                  Image.asset(
                    'assets/IG_splash.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 290,
                  ),
                  const Text('From'),
                  Image.asset(
                    'assets/Meta.png',
                    width: 100,
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
