import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Izzy());
}

class Izzy extends StatelessWidget {
  const Izzy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFF005389)),
      child: Stack(
        children: [
          SvgPicture.asset('lib/assets/login/estrelas.svg', fit: BoxFit.cover),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'lib/assets/login/logo.png',
              fit: BoxFit.cover,
              width: 150,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: Color(0xFFFEE1A2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Text(
                      "Você está há um passo de ter uma vida menos caótica!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF003454),
                        fontFamily: "Poppins, sans-serif",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      "Faça login com sua conta Google",

                      style: TextStyle(
                        color: Color(0xFF718DA2),
                        fontFamily: "Poppins, sans-serif",
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Color(0xFF001C37),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 10,
                        children: [
                          Text(
                            "COMEÇAR",
                            style: TextStyle(
                              color: Color(0xFFF9ECCF),
                              fontFamily: "Poppins, sans-serif",
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Image.asset(
                            'lib/assets/login/google.png',
                            fit: BoxFit.cover,
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.3),
            child: Image.asset('lib/assets/login/astro.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
