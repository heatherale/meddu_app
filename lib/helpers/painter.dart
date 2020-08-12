import 'package:flutter/material.dart';
import 'dart:math';

class Painter extends CustomPainter{

  final double screenWidth;
  final double curveHeight = 81.0;

  Painter(this.screenWidth);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = /*Color.fromRGBO(111, 189, 241, 0.68)*/ Colors.black
        ..style = PaintingStyle.fill;

    var firstCurve = Path();

    int amplitude = 10;
    int frequency = 30;

    double x = 0;
    double y = 0;

    while(x<screenWidth){
      y = curveHeight/2+amplitude*sin(x/frequency);
      firstCurve.lineTo(x, y);
      x=x+1;
    }

    canvas.drawPath(firstCurve, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}