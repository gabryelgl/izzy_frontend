import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const Izzy());
}

class Izzy extends StatelessWidget {
  const Izzy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
