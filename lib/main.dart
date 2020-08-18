import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double sizeHeight = 250;
    final double sizeWidth = 500;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomBackground(),
          Container(
            width: sizeWidth,
            height: sizeHeight,
            //color: Colors.greenAccent,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: sizeWidth * 0.15,
                  child: Wheel(sizeHeight: sizeHeight),
                ),
                Positioned(
                  bottom: 0,
                  right: sizeWidth * 0.13,
                  child: Wheel(sizeHeight: sizeHeight),
                ),
                Positioned(
                  bottom: sizeHeight * 0.13,
                  left: sizeWidth * 0.305,
                  right: sizeWidth * 0.285,
                  child: Container(
                    padding: EdgeInsets.only(bottom: sizeHeight * 0.024),
                    height: sizeHeight * 0.03,
                    decoration: BoxDecoration(color: Color(0xFF10151B)),
                    child: Container(color: Color(0xFF363B41)),
                  ),
                ),
                Positioned(
                  bottom: sizeHeight * 0.15,
                  left: 0,
                  right: 0,
                  child: CarBody(sizeHeight: sizeHeight),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CarBody extends StatelessWidget {
  const CarBody({@required this.sizeHeight});
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.6,
      width: 100,
      child: CustomPaint(
        painter: CarBodyPaint(),
      ),
    );
  }
}

class CarBodyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //Propierties
    paint.color = Color(0xFF696F74);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    //Draw
    path.moveTo(0, size.height * 0.55);
    path.lineTo(0, size.height * 0.9);
    path.lineTo(size.width * 0.13, size.height * 0.9);
    path.lineTo(size.width * 0.18, size.height * 0.65);
    path.lineTo(size.width * 0.28, size.height * 0.65);
    path.lineTo(size.width * 0.33, size.height * 0.96);
    path.lineTo(size.width * 0.68, size.height * 0.96);
    path.lineTo(size.width * 0.73, size.height * 0.65);
    path.lineTo(size.width * 0.85, size.height * 0.65);
    path.lineTo(size.width * 0.90, size.height * 0.9);
    path.lineTo(size.width * 0.95, size.height * 0.9);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width * 0.4, 0);
    path.lineTo(0, size.height * 0.55);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Wheel extends StatelessWidget {
  const Wheel({@required this.sizeHeight});
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.3,
      width: sizeHeight * 0.3,
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF141516),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF272A2C),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 2),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF202224),
                blurRadius: 10,
              ),
            ],
            shape: BoxShape.circle,
            color: Color(0xFF202224),
          ),
        ),
      ),
    );
  }
}

class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.6,
          width: double.infinity,
          color: Colors.black,
        ),
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          color: Color(0xFF222A2D),
        ),
      ],
    );
  }
}
