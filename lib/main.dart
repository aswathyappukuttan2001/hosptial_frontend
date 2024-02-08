import 'package:flutter/material.dart';
import 'package:hosptialsapp/pages/menu.dart';

void main() {
  runApp(home());
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menu(),
    );
  }
}


