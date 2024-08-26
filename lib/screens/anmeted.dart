import 'package:flutter/material.dart';

class AnmetedTextFild extends StatefulWidget {
  Color primaryColor, beginColor, endColor;
  String label;
  IconData icon;
  Duration duration;
  bool secureText;
  AnmetedTextFild({
    Key? key,
    required this.primaryColor,
    required this.beginColor,
    required this.endColor,
    required this.label,
    required this.icon,
    required this.duration,
    required this.secureText,
  });

  @override
  State<AnmetedTextFild> createState() => _AnmetedTextFildState();
}

class _AnmetedTextFildState extends State<AnmetedTextFild>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _scaleAnimation;
  late Animation _colorAnimation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: widget.duration);
    _scaleAnimation = Tween(
      begin: 1,
      end: 0,
    ).animate(_animationController);
    _colorAnimation = ColorTween(begin: widget.beginColor, end: widget.endColor)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 320,
        height: 50,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            TextField(
              obscureText: widget.secureText,
              decoration: InputDecoration(
                label: Text(
                  widget.label,
                  style: const TextStyle(color: Colors.black),
                ),
                border: InputBorder.none,
                focusedBorder: const OutlineInputBorder(),
                icon: Icon(
                  widget.icon,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ));
  }
}
