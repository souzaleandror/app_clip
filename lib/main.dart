import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                "https://i.udemycdn.com/user/200_H/51101684_c590_2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
