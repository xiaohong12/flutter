import 'package:flutter/material.dart';

class MyCustomIndicator extends Decoration {
  final double indWidth;
  final double indHeight;
  final double radius;
  final Color color;

  const MyCustomIndicator(
      {this.indWidth = 20.0,
      this.indHeight = 2.5,
      this.radius = 2,
      this.color = const Color.fromRGBO(255, 46, 77, 1)});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomBoxPainter(
        this, onChanged, indWidth, indHeight, radius, color);
  }
}

class _CustomBoxPainter extends BoxPainter {
  final MyCustomIndicator decoration;
  final double indWidth;
  final double indHeight;
  final double radius;
  final Color color;

  _CustomBoxPainter(this.decoration, VoidCallback? onChanged, this.indWidth,
      this.indHeight, this.radius, this.color)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size!;
    final newOffset = Offset(
        offset.dx + (size.width - indWidth) / 2, size.height - indHeight);
    final Rect rect = newOffset & Size(indWidth, indHeight);
    final Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, Radius.circular(radius)), // 圆角半径
      paint,
    );
  }
}
