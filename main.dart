import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[400],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/zayanali3.png'),
              ),
              Text(
                'Zayan Aamir Ali',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'DEVELOPER | DESIGNER | VIDEO EDITOR',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 12.0,
                  color: Colors.white,
                  letterSpacing: 5.0,
                ),
              ),
              Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue[600].withOpacity(0.5),
                        blurRadius: 7.0,
                        spreadRadius: 5.0,
                        offset: Offset(7, 3),
                      ),
                    ]),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+92 332 2231927',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue[600].withOpacity(0.5),
                        blurRadius: 7.0,
                        spreadRadius: 5.0,
                        offset: Offset(7, 3),
                      ),
                    ]),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'zayanaamirali@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              //Animated text is below this line
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 20.0, height: 100.0),
                  // Text(
                  //   "Be",
                  //   style: TextStyle(fontSize: 43.0),
                  // ),
                  SizedBox(width: 20.0, height: 100.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotateAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          text: ["IMPROVISE", "ADAPT", "OVERCOME"],
                          textStyle: TextStyle(
                              fontSize: 40.0,
                              fontFamily: "Raleway",
                              color: Colors.white),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
