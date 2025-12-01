import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF005389)),
      child: Stack(
        children: [
          SvgPicture.asset('assets/login/bg_stars.svg', fit: BoxFit.cover),

          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/login/logo.png', width: 150),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                decoration: const BoxDecoration(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                        );
                      },
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
                          Image.asset('assets/login/google.png', width: 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: const Alignment(0, -0.3),
            child: Image.asset('assets/login/astro.png'),
          ),
        ],
      ),
    );
  }
}
