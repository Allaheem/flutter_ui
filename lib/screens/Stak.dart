import 'package:flutter/material.dart';


void main(){}



class MyHomePages extends StatefulWidget{
  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
@override
   @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Center(child: Text('this isa stack screen')),
toolbarHeight: 80,
elevation: 20,

),

body:   Container(
  margin: EdgeInsets.all(8.0),
  child: Center(
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Image.network('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgybtPyf8Hvxyt20pZV4mcs2qzNTTbspyXwzC0M3R5EjfNo61_wEYWouTSr-gZN-IbfKJw5JfUzHWAjRRKZ6IKaz2bpwgRT03UDkwu_sxsWw8O4e7OsS1he8NXZJGlNjNhXZKt1p4PPSgs9fqqwIkK0GRpmd9IIL5W0Yrp3Fl4_57YKi8rGmDne6efmkklQ/s402/%D9%82%D9%87%D9%88%D8%A9,%20coffee,%20%D8%B4%D8%B9%D8%A7%D8%B1%20%D9%82%D9%87%D9%88%D8%A9,%20coffee%20logo,%20%D8%B5%D9%88%D8%B1%D8%A9%20%D9%82%D9%87%D9%88%D8%A9,%20%D9%83%D9%88%D8%A8%20%D9%82%D9%87%D9%88%D8%A9,%D8%B5%D9%88%D8%B1%20%D8%A8%D8%AF%D9%88%D9%86%20%D8%AD%D9%82%D9%88%D9%82%20%D9%86%D8%B4%D8%B1,%20%D8%B4%D8%B9%D8%A7%D8%B1%20%D9%85%D8%AC%D8%A7%D9%86%D9%8A,%20%D8%B4%D8%B9%D8%A7%D8%B1%20%D8%AC%D8%A7%D9%87%D8%B2.png', width: 150, height: 150),
          ),
          SizedBox(width: 20), 
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(5, 3),
                ),
              ],
            ),
            child: Image.network('https://iqqrae.com/wp-content/uploads/2020/03/40-300x200.png', width: 150, height: 150),
          ),
        ],
      ),
    ),
),





    ) ;
  }
}

