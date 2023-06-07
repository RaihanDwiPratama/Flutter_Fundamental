import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "TextField Form",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
              TextField(
                // add some styles
                decoration: InputDecoration(
                  icon: Icon(Icons.account_balance_wallet),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                maxLength: 30,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(
                "Outputnya, " + controller.text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Contoh lain TextField",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
              TextField(
                // add some styles
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Username"
                ),
                maxLength: 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  // add some styles
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.enhanced_encryption),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password"
                  ),
                  maxLength: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextField(
                  // add some styles
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.queue),
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    labelText: "Add some more",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Input here"
                  ),
                  maxLength: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
