import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 17),
                      child: Text(
                        "Spicy and Creamy Slaw",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Lato",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                        left: 30,
                        bottom: 24,
                      ),
                      child: Text(
                        "This super-flexible, all-purpose salad turns cabbage into luscious tangles of crisp leaves generously coated in a rich and bright dressing.",
                        style: TextStyle(
                          color: Color(0xFF676767),
                          fontSize: 12,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 53),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "6 Servings\n\n",
                      style: TextStyle(
                        color: Color(0xFF676767),
                        fontSize: 11,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400,
                        height: 1.8,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '½  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'small red onion or 1 medium shallot, thinly sliced',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '3  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Tbsp. apple cider vinegar or white wine vinegar',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '½–1  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'serrano chile or jalapeño, thinly sliced into rounds Kosher salt, freshly ground pepper',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '1  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'small garlic clove, finely grated',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '½  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'cup plain whole-milk Greek yogurt or mayonnaise',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '2  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Tbsp. extra-virgin olive oil',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '1  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'tsp. finely grated lemon zest',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '1  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Tbsp. fresh lemon juice',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '1  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'medium head of savoy or green cabbage (about 2 lb.)',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '½  ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'cup chopped dill or parsley',
                            style: TextStyle(
                              color: Color(0xFF676767),
                              fontSize: 12,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w300,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
