import 'package:flutter/material.dart';
import 'package:meddu_app/helpers/painter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 160.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xff00A5FF), const Color(0xff33B7FF)],
                    stops: [0.2356, 0.8678],
                ),
            ),
          ),

          Positioned(
            top: 68.0,
            child: Text(
              'MEDDU',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
              ),
            ),
          ),

          Positioned(
            top: 85.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
                height: 75.0,
                width: MediaQuery.of(context).size.width,
                child: CustomPaint(
                  painter: Painter(MediaQuery.of(context).size.width),
                ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35.0), bottomRight: Radius.circular(35.0))
              ),
            ),
          )
        ],
      ),
    );
  }
}


