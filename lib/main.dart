import 'package:flutter/material.dart';
import 'package:meddu_app/helpers/painter.dart';
import 'package:meddu_app/ui/views/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginPage()
    );
  }
}

