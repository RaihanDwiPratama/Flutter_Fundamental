import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 98, 30, 56),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("images/logo.png"),
                width: 36,
                height: 54.98,
              ),
              Text.rich(
                TextSpan(
                  text: "Sign in to \nDaily",
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