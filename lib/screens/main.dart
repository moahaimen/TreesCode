import 'package:flutter/material.dart';
import 'file:///C:/Users/HP/IdeaProjects/trees_app/lib/screens/login_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: LoginPage(),
    );
  }
}

