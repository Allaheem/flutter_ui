import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var animatedTextField = AnimatedTextField;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height / 3 + 70,
            child: Stack(
              children: [
                CustomPaint(
                  painter: HeaderPainter(),
                  child: SizedBox(
                    width: size.width,
                    height: size.height / 3,
                    child: const Center(
                      child: Text(
                        'BRAND ONE MOBEL',
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: ClipOval(
                      child: Image.network(
                        'https://dabegad.com/wp-content/uploads/2018/12/appleLogo-1.jpg',
                        width: 130,
                        height: size.height / 6 + 8,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        animatedTextField = animatedTextField(
            primaryColor: Colors.blueGrey, 
            beginColor: Colors.white,
            endColor: Colors.blueGrey,
            label: "Email",
            icon: Icons.email,
            duration: const Duration(milliseconds: 300),
            secureText: false,
          ),
        ],
      ),
    );
  }
}

class AnimatedTextField {
  AnimatedTextField({
    required this.primaryColor,
    required this.beginColor,
    required this.endColor,
    required this.label,
    required this.icon,
    required this.duration,
    required this.secureText,
  });

  final Color primaryColor;
  final Color beginColor;
  final Color endColor;
  final String label;
  final IconData icon;
  final Duration duration;
  final bool secureText;
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.blueGrey;
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height + 80, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}