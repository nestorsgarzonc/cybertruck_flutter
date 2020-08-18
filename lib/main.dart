import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NW Cybertruck',
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
    final doorFrames = [
      Positioned(
        right: sizeWidth * 0.34,
        top: sizeHeight * 0.4,
        child: Container(
          color: Colors.black,
          width: 0.8,
          height: sizeHeight * 0.4,
        ),
      ),
      Positioned(
        right: sizeWidth * 0.54,
        top: sizeHeight * 0.31,
        child: Container(
          color: Colors.black,
          width: 0.8,
          height: sizeHeight * 0.5,
        ),
      ),
      Positioned(
        right: sizeWidth * 0.74,
        top: sizeHeight * 0.4,
        child: Container(
          color: Colors.black,
          width: 0.8,
          height: sizeHeight * 0.4,
        ),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomBackground(),
          Container(
            width: sizeWidth,
            height: sizeHeight,
            color: Colors.red.withOpacity(0),
            child: Stack(
              children: [
                Positioned(
                  bottom: sizeHeight * 0.05,
                  left: sizeWidth * 0.1,
                  right: sizeWidth * 0.2,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 20, spreadRadius: 10),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: sizeHeight * 0.15,
                  left: 0,
                  right: 0,
                  child: CarBody(sizeHeight: sizeHeight),
                ),
                Positioned(
                  bottom: sizeHeight * 0.13,
                  left: 0,
                  right: sizeWidth * 0.05,
                  child: LowCarBody(sizeHeight: sizeHeight),
                ),
                Positioned(
                  bottom: 0,
                  left: sizeWidth * 0.07,
                  child: Wheel(sizeHeight: sizeHeight),
                ),
                Positioned(
                  bottom: 0,
                  right: sizeWidth * 0.13,
                  child: Wheel(sizeHeight: sizeHeight),
                ),
                Positioned(
                  top: sizeHeight * 0.28,
                  left: sizeWidth * 0.12,
                  right: sizeWidth * 0.34,
                  child: WindowFrame(sizeHeight: sizeHeight),
                ),
                Positioned(
                  top: sizeHeight * 0.58,
                  child: WhiteLight(),
                ),
                Positioned(
                  top: sizeHeight * 0.485,
                  right: 0,
                  child: RedLight(),
                ),
                Positioned(
                  top: sizeHeight * 0.28,
                  right: sizeWidth * 0.54,
                  child: WindowPilot(),
                ),
                Positioned(
                  top: sizeHeight * 0.30,
                  right: sizeWidth * 0.34,
                  child: WindowEcopilot(),
                ),
                Positioned(
                  top: sizeHeight * 0.4,
                  left: sizeWidth * 0.12,
                  child: Mirror(),
                ),
                ...doorFrames,
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                Text(
                  '  CYBERTRUCK BY NW  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 4,
                    fontSize: 24,
                  ),
                ),
                FlutterLogo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mirror extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 70,
      child: CustomPaint(painter: MirrorPaint()),
    );
  }
}

class MirrorPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFFFFFFFF).withOpacity(0.05);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;
    final path = Path();
    path.moveTo(size.width * 0.3, size.height * 0.85);
    path.lineTo(size.width * 0.95, size.height * 0.7);
    path.lineTo(size.width * 0.95, size.height * 0.3);
    path.lineTo(size.width * 0.3, size.height * 0.85);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WindowEcopilot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: CustomPaint(painter: WindowEcopilotPaint()),
    );
  }
}

class WindowEcopilotPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFFFFFFFF).withOpacity(0.05);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;
    final path = Path();
    path.moveTo(size.width * 0.05, size.height * 0.9);
    path.lineTo(size.width * 0.95, size.height * 0.8);
    path.lineTo(size.width * 0.95, size.height * 0.58);
    path.lineTo(size.width * 0.05, size.height * 0.2);
    path.lineTo(size.width * 0.05, size.height * 0.9);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WindowPilot extends StatelessWidget {
  const WindowPilot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      child: CustomPaint(painter: WindowPilotPaint()),
    );
  }
}

class WindowPilotPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFFFFFFFF).withOpacity(0.05);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;
    final path = Path();
    path.moveTo(size.width * 0.05, size.height * 0.9);
    path.lineTo(size.width * 0.95, size.height * 0.8);
    path.lineTo(size.width * 0.95, size.height * 0.2);
    path.lineTo(size.width * 0.7, size.height * 0.1);
    path.lineTo(size.width * 0.05, size.height * 0.55);
    path.lineTo(size.width * 0.05, size.height * 0.9);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WhiteLight extends StatelessWidget {
  const WhiteLight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            spreadRadius: 10,
            offset: Offset(-15, 0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 20,
            spreadRadius: 10,
            offset: Offset(-15, 20),
          ),
        ],
      ),
    );
  }
}

class RedLight extends StatelessWidget {
  const RedLight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 5,
      decoration: BoxDecoration(
        color: Color(0xFFA81D14),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 20,
            spreadRadius: 5,
            offset: Offset(1, 0),
          ),
        ],
      ),
    );
  }
}

class WindowFrame extends StatelessWidget {
  const WindowFrame({@required this.sizeHeight});
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.24,
      child: CustomPaint(painter: WindowFramePainter()),
    );
  }
}

class WindowFramePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFF121213);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height * 0.85);
    path.lineTo(size.width, size.height * 0.46);
    path.lineTo(size.width * 0.52, 0);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class LowCarBody extends StatelessWidget {
  final double sizeHeight;
  const LowCarBody({@required this.sizeHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight * 0.24,
      child: CustomPaint(
        painter: LowCarBodyPaint(),
      ),
    );
  }
}

class LowCarBodyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xFF121213);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.moveTo(0, size.height * 0.55);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(size.width * 0.22, size.height);
    path.lineTo(size.width * 0.85, size.height);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height * 0.55);
    path.lineTo(size.width * 0.95, size.height * 0.55);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width * 0.76, 0);
    path.lineTo(size.width * 0.71, size.height * 0.7);
    path.lineTo(size.width * 0.27, size.height * 0.7);
    path.lineTo(size.width * 0.22, 0);
    path.lineTo(size.width * 0.10, 0);
    path.lineTo(size.width * 0.05, size.height * 0.6);
    path.lineTo(0, size.height * 0.6);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
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
    paint.color = Color(0xFFA2ADB3);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    //Draw
    path.moveTo(0, size.height * 0.55);
    path.lineTo(0, size.height * 0.9);
    path.lineTo(size.width * 0.5, size.height * 0.9);
    path.lineTo(size.width * 0.10, size.height * 0.65);
    path.lineTo(size.width * 0.1, size.height * 0.65);
    path.lineTo(size.width * 0.3, size.height * 0.96);
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
      height: sizeHeight * 0.32,
      width: sizeHeight * 0.32,
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF000000),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF272A2C),
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 1),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF202224),
                blurRadius: 10,
              ),
            ],
            shape: BoxShape.circle,
            color: Color(0xFF151516),
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
          color: Color(0xFF424141),
        ),
      ],
    );
  }
}
