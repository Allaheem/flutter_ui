import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      /*  appBar: AppBar(
        elevation: 30,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.red),
        ),
      ),*/
      body: Column(
        children: [
          SizedBox(
            height: size.height/3+70,
          
            child: Stack(
              children: [
                CustomPaint(
                  painter: HeaderPainter(),
                  child: SizedBox(
                    width: size.width,
                    height: size.height / 3,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    paint paint = Paint()..color = Colors.blueGrey;
    path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/2, size.height+80, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
