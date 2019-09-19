/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 21/01/2019
 * Time: 15:17
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';
import 'dart:math' as math;

class _DrawProgress extends CustomPainter {
  final Color color;
  final double radius;
  double angle;
  AnimationController animation;

  Paint circleFillPaint;
  Paint progressPaint;
  Rect rect;

  _DrawProgress(this.color, this.radius,
      {double this.angle, AnimationController this.animation}) {
    circleFillPaint = new Paint();
    circleFillPaint.color = Colors.red;
    circleFillPaint.style = PaintingStyle.fill;

    progressPaint = new Paint();
    progressPaint.color = color;
    progressPaint.style = PaintingStyle.stroke;
    progressPaint.strokeCap = StrokeCap.round;
    progressPaint.strokeWidth = 1.0;

//    if (animation != null && !animation.isAnimating) {
//      animation.forward();
//    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    double x = size.width / 2;
    double y = size.height / 2;
    Offset center = new Offset(x, y);
    canvas.drawCircle(center, 100, progressPaint);
//    canvas.drawCircle(center, radius - 2, circleFillPaint);
//    rect = Rect.fromCircle(center: center, radius: radius);
//    angle = angle * (-1);
//    double startAngle = -math.pi / 2;
//    double sweepAngle = math.pi * angle / 180;
//    print("draw paint-------------------= $startAngle, $sweepAngle");
//    //canvas.drawArc(rect, startAngle, sweepAngle, false, progressPaint);
//    Path path = new Path();
//    path.arcTo(rect, startAngle, sweepAngle, true);
//    canvas.drawPath(path, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class MyPainter extends  CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    double x = size.width / 2;
    double y = size.height / 2;
    Offset center = new Offset(x, y);

    Paint circleFillPaint = new Paint();
    circleFillPaint = new Paint()
      ..color = Colors.red //画笔颜色
      ..strokeCap = StrokeCap.round //画笔笔触类型
      ..isAntiAlias = true //是否启动抗锯齿
//      ..blendMode = BlendMode.exclusion //颜色混合模式
      ..style = PaintingStyle.fill //绘画风格，默认为填充
//      ..colorFilter = ColorFilter.mode(Colors.red,BlendMode.exclusion) //颜色渲染模式，一般是矩阵效果来改变的,但是flutter中只能使用颜色混合模式
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, .0) //模糊遮罩效果，flutter中只有这个
      ..filterQuality = FilterQuality.high //颜色渲染模式的质量
      ..strokeWidth = 1.0; //画笔的宽度
//    canvas.drawRRect(RRect.lerp(Rect(0.0, 0,0), b, t), paint)
//    canvas.drawCircle(center, 100, circleFillPaint);

    print("x=$x");
    print("y=$y");
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
class CanvasDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<CanvasDemo>  with TickerProviderStateMixin  {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是Canvas'),
      ),
      body:Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          CustomPaint(
            painter:  MyPainter(),
            size: new Size(305.0, 225.0),
          ),
        ],
      )
    );
  }
}
