import 'dart:ffi';

import 'package:flutter/cupertino.dart';
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
    var FontAwesomeIcon;
    var facebook = FontAwesomeIcon.facebook;
    var google = FontAwesomeIcon.google;
    var slack = FontAwesomeIcon.slack;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            AnimatedTextField(
              primaryColor: Colors.blueGrey,
              beginColor: Colors.white,
              endColor: Colors.blueGrey,
              label: "Email",
              icon: Icons.email,
              duration: const Duration(milliseconds: 300),
              secureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedTextField(
              primaryColor: Colors.blueGrey,
              beginColor: Colors.white,
              endColor: Colors.blueGrey,
              label: "password",
              icon: Icons.lock,
              duration: const Duration(milliseconds: 300),
              secureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 120,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.login,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "or login with",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSocialMediaBtn(
                      color: const Color.fromARGB(255, 59, 89, 152),
                      icon: facebook,
                      
                      ),
                      _buildSocialMediaBtn(
                      color: const Color.fromARGB(255, 219, 68, 55),
                      icon: FontAwesomeIcon.google,
                      
                      ),
                      _buildSocialMediaBtn(
                      color: const Color.fromARGB(255, 74, 21, 75),
                      icon: FontAwesomeIcon.slack,
                      
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaBtn({required Color color, required IconData icon}) {
    return Container(
      width: 50,
      height: 25,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FaIcon(icon, color: color),
      ),
    );
  }

  FaIcon(IconData icon, {required Color color}) {}
}

class SvgPicture {
  static asset(String s, {required String semanticsLabel}) {}
}

class AnimatedTextField extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Container(
        // Your custom text field widget implementation
        );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, size) {
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
