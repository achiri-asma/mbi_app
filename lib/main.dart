import 'package:flutter/material.dart';
import 'splash_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_page(),
    );
  }
}
