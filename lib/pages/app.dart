import 'package:flutter/material.dart';
import 'package:myapp9/pages/appbar_demo.dart';

// import 'Hello_demo.dart';
import 'appbar_demo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      home: AppBarDemo(),
    );
  }
}
