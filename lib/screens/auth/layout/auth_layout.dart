import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {

  final Widget widget;

  const AuthLayout({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [ 

            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * 0.3,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(topLeft: Radius.circular(100), topRight: Radius.circular(100)),
                      gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.white24,
                        Colors.white12,
                        Colors.black12,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      )
                    )
                  ),
                  CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 200),
                    painter: MoonPainter(),
                  ),
                  // AnimatedMoon(),
                ],
              ),
            ),


            SingleChildScrollView(
              child: widget,
            )

          ],
        ),
      )
    );
  }
}

List<Color> generateGradientColors() {
  List<Color> colors = [];
  for (int i = 0; i <= 45; i++) {
    double opacity = 0.05 + (i * 0.01);
    colors.add(Colors.white.withOpacity(opacity));
  }
  return colors;
}

class MoonPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final Path path = Path()
      // ..moveTo(0, size.height)
      // ..quadraticBezierTo(size.width / 2, 0, size.width, size.height)
      // ..lineTo(0, size.height)
      // ..close();
      ..moveTo(-60, (size.height + 50))
      ..quadraticBezierTo( (size.width)/ 2, 30, (size.width + 60), (size.height+50))
      ..lineTo(0, (size.height + 50))
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}