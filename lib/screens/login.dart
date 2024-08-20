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
                    child:const Center(child: Text('GUN',style: TextStyle(fontSize: 40,color: Colors.black),),),
                  ),
                ),
                Align(alignment: Alignment.bottomCenter,
                child: Image.network('https://scontent.famm12-1.fna.fbcdn.net/v/t39.30808-6/454725724_2666261396882024_3510469687855418399_n.jpg?stp=dst-jpg_p180x540&_nc_cat=100&ccb=1-7&_nc_sid=cf85f3&_nc_ohc=SYAirK7E6osQ7kNvgEJdW1_&_nc_ht=scontent.famm12-1.fna&oh=00_AYDKyAaVWRSkgKerEICVInTyLVtK6skMQh3RoQY17dA7xw&oe=66C53AD3',width: 130,height: 130,),


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
