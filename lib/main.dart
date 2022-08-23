import 'package:flutter/material.dart';
import 'package:instagram_ui/Pages/StartedPage.dart';
// import 'package:instagram_ui/Pages/HomePage.dart';

void main() {
  runApp(const InstagramUI());
}

class InstagramUI extends StatelessWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram_Clone',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0)),
        home: const StartedPage());
  }
}
