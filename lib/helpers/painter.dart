import 'package:flutter/material.dart';
import 'dart:math';

class Painter extends CustomPainter{

  final double screenWidth;
  final double curveHeight = 75.0;

  Painter(this.screenWidth);

  void createSinWave(Path path, Paint paint, Canvas canvas, int amplitude, int frequency){
    double x = 0;
    double y = 0;

    path.moveTo(x, y);

    while(x<screenWidth){
      path.addRect(Rect.fromLTWH(x, y, 1.0, curveHeight-y));
      y = curveHeight/2+amplitude*sin(x/frequency);
      x=x+1;
    }


    canvas.drawPath(path, paint);
  }

  void createCosWave(Path path, Paint paint, Canvas canvas, int amplitude, int frequency){
    double x = 0;
    double y = 0;

    path.moveTo(x, y);

    while(x<screenWidth){
      path.addRect(Rect.fromLTWH(x, y, 1.0, curveHeight-y));
      y = curveHeight/2+amplitude*cos(x/frequency);
      x=x+1;
    }


    canvas.drawPath(path, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    var painter = Paint()
        ..color = Color.fromRGBO(111, 189, 241, 0.68)
        ..style = PaintingStyle.fill;

    createSinWave(Path(), painter, canvas, 20, 40);
    createCosWave(Path(), painter, canvas, 15, 35);


  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}