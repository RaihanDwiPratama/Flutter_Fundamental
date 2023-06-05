import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/logo.png"),
                width: 36,
                height: 54.98,
              ),
              Text(
                "Sign in to",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF373737),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "Daily",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF373737),
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: "Spired.",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF0C0D0E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
