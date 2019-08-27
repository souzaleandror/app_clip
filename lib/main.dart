import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: ClipHome(),
        child: Container(
          color: Colors.blue,
        ));
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);

    var pointControl = Offset(size.width + 50, size.height / 2);
    var endPoint = Offset(0.0, 0.0);

    path.quadraticBezierTo(
        pointControl.dx, pointControl.dy, endPoint.dx, endPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper != this;
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                height: 300,
                width: 300,
                child: ClipOval(
                  child: Image.network(
                    "https://i.udemycdn.com/user/200_H/51101684_c590_2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                height: 300,
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    "https://i.udemycdn.com/user/200_H/51101684_c590_2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Jacob A. Moura",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "jacob@gmail.com",
              style: TextStyle(color: Colors.grey[700], fontSize: 24),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              minWidth: 150,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                label: Text(
                  "Sair",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                print("Clicou");
              },
              child: Material(
                elevation: 7,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: Text(
                    "Sair",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
