import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: SizedBox(
              height: 213.07,
              width: 131.25,
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0XFF3C48F2),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFFFFFFFF),
                        size: 12,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Spicy and\nCreamy Slaw",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Lato",
                            color: Color(0XFF3C48F2),
                          ),
                        ),
                        Text(
                          "By Andy Baraghani",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF676767),
                              fontSize: 8.87),
                        ),
                        Text(
                          "This super-flexible, all-purpose salad turns",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              color: Color(0XFF676767),
                              fontSize: 6.96),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
