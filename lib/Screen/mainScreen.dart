import 'package:dice/Screen/dice1.dart';
import 'package:dice/Screen/dice2.dart';
import 'package:dice/Screen/dice3.dart';
import 'package:dice/Screen/dice4.dart';
import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo.shade400,
            title: Stack(
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      foregroundImage: AssetImage("images/sele.jfif"),
                    ),
                  ),
                ),
              ],
            )),
        backgroundColor: Colors.indigoAccent,
        body: Padding(
          padding: EdgeInsets.only(top: 150.0),
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DiceOne()));
                                  },
                                  child: Image(
                                      image: AssetImage("images/1.jpeg"))),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DiceTwo()));
                                  },
                                  child: Image(
                                      image: AssetImage("images/2.jpeg"))),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            //     child: Image(
                            //         image: AssetImage("images/3.jpeg"))),

                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DiceThree()));
                                  },
                                  child: Image(
                                      image: AssetImage("images/3.jpeg"))),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DiceFour()));
                                  },
                                  child: Image(
                                      image: AssetImage("images/4.jpeg"))),
                            )
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
