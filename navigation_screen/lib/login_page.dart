import 'package:flutter/material.dart';
import 'package:navigation_screen/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 98, 30, 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              width: 32,
              height: 7,
              margin: EdgeInsets.only(top: 16, bottom: 55),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF3C48F2),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 46,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                    borderSide: BorderSide(color: Color(0xFF3C48F2), width: 1),
                  ),
                  hintStyle: TextStyle(
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB1B6FA),
                  ),
                  hintText: 'Email',
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 29),
              child: SizedBox(
                width: double.infinity,
                height: 46,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27),
                      borderSide: BorderSide(color: Color(0xFF3C48F2), width: 1),
                    ),
                    hintStyle: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFB1B6FA),
                    ),
                    hintText: 'Password',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3C48F2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                          fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) {
                            return MainPage();
                          }),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
