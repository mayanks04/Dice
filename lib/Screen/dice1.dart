import 'package:flutter/material.dart';
import 'dart:math';

class DiceOne extends StatefulWidget {
  @override
  _DiceOneState createState() => _DiceOneState();
}

class _DiceOneState extends State<DiceOne> with SingleTickerProviderStateMixin {
  int d_1 = 1;

  AnimationController _handel;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _handel.dispose();
  }

  animate() {
    _handel = AnimationController(duration: Duration(seconds: 1), vsync: this);

    _handel.addListener(() {
      print(_handel.value);
      setState(() {});
    });
    _handel.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          d_1 = Random().nextInt(6) + 1;
        });
        print("done");
        _handel.reverse();
      }
    });
  }

  void roll() {
    _handel.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onDoubleTap: roll,
                child: Image(
                    height: 150 - (_handel.value) * 150,
                    image: AssetImage("images/d-$d_1.jpg")),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.indigo),
            child: Text(
              "Tap to roll",
              style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: roll,
          )
        ],
      ),
    );
  }
}
