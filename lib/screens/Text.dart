import 'package:flutter/material.dart';

void main() {}

class Textgun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 50, //تحدد ال appbar
        title: Text(
          'Guns',
          style:
              TextStyle(fontSize: 35, color: Color.fromARGB(255, 212, 15, 15)),
        ),
        centerTitle: true, //كتابة العنوان
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              iconSize: 35,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.vaccines),
              iconSize: 35,
            ),
          ],
        ), //الايكون الموجودة على اليسار
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.comment),
            iconSize: 35,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            iconSize: 35,
          ),
        ],
      ),
      body: Center(
        
          child: Text(
        'helo allaheem👋',
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
        ),
      )),
        backgroundColor: Color.fromARGB(27, 250, 199, 144)
    );
  } //الكود الرئيسي لكل مشروع
}
