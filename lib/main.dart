import 'package:flutter/material.dart';
import 'package:gitaa/pages/detail_page.dart';
import 'package:gitaa/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        DetailPage.id:(context) => DetailPage(input: '',)
      },
    );
  }
}

