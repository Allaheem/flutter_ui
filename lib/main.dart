import 'package:flutter/material.dart';


import 'screens/Text.dart';


void main() {
  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Textgun(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchValue = 'your search';
  Map products = {
    'Tshirt': {
      'title': 'this is a shirt',
      'image':
          'https://scontent.famm12-1.fna.fbcdn.net/v/t1.6435-9/186324566_1757741634392448_7434638592596908631_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=7b2446&_nc_ohc=UW_L7_aWt-4Q7kNvgG0mvtf&_nc_ht=scontent.famm12-1.fna&oh=00_AYB3Sje6UoLhWldui_M6hfucWugvFwnRPgL4MWjBFH0uUw&oe=66AB4C3C'
    },
    'Shose': {
      'title': 'this is a shirt',
      'image':
          'https://assets.annahar.com/ContentFilesArchive/303622Image1.jpg?version=1928962'
    },
    'bag': {
      'title': 'this is a shirt',
      'image':
          'https://ghazel.fr/cdn/shop/products/image_153ac8f2-559f-446a-b574-796e88e49d9d.jpg?v=1613221094&width=1946'
    },
    'handbag': {
      'title': 'this is a shirt',
      'image':
          'https://cdn.pixabay.com/photo/2016/06/25/12/50/handbag-1478814_1280.jpg'
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: const EdgeInsets.only(top: 10, left: 130),
            child: const Text('Home')),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 60),
              child: const Text(
                "allaheem",
                style: TextStyle(
                    backgroundColor: Color.fromARGB(
                      255,
                      90,
                      125,
                      143,
                    ),
                    fontSize: 20),
              ),
            ),
            Container(
              width: 200,
              height: 150,
              color: const Color.fromARGB(255, 226, 18, 18),
              child: Image.network(
                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEipc6Q-VkSGh9OfOtA9X2gu5y21stTkBDbfCATGqOlikVqZ8x4hUwB4PzAXDBoseKXFPwXf0_94z-glxCQBMQXTLCotYIGLQ87vmXI-Xz633g3EDJLexsUffmE-JVqYO8xIRRofOi6rxKE3j5WXM9GN1p-fbTxLnu14awJmjwodhbrZr5vDklfc1EKA5Q/s736/0b3df19a63dfe264cfd984f6864a77b3.jpg',
                  width: 50,
                  height: 25,
                  fit: BoxFit.fill),
            ),
            TextField(
                decoration: const InputDecoration(
                  label: Text('share'),
                  hintText: 'search for item',
                  icon: Icon(Icons.search),
                ),
                onChanged: (x) {
                  print(x);
                  if (products.keys.contains(x)) {
                    searchValue = products[x]['title'];
                  }
                  setState(() {
                    searchValue = searchValue;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
     
class SeconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('allaheem'),
        backgroundColor: const Color.fromARGB(255, 28, 0, 33),
      ),
      body: const Center(
        child: Text("Secon page"),
      ),
         
    );
  }
}
