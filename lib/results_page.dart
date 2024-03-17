import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: backgroundColour, borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text('OVERWEIGHT',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    child: Text('26.7',
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text('You have higher than normal body weight. Try to exercise more',
                        textAlign: TextAlign.center,
                      )
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Text('RE-CALCULATE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),
                ),
                color: Color(0xFFEB1555),
              ),
            ),
          )
        ],
      ),
    );
  }
}
