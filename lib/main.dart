import 'package:design_1/screens/design_1.dart';
import 'package:design_1/screens/design_2.dart';
import 'package:design_1/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: '/home',
      routes: {
        '/': (BuildContext context) => ScreenDesign1(),
        '/scrollpage': (BuildContext context) => ScreenDesign2(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}
