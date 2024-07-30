// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {}

/*class Textgun extends StatelessWidget {
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
      backgroundColor: Color.fromARGB(27, 250, 199, 144),
    );
  } //الكود الرئيسي لكل مشروع
}*/

/*class DrawerScreen extends StatefulWidget {
  @override
  D createState() => D();
}

class D extends State<DrawerScreen> {
  Widget screen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'this is a drawer page',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(249, 33, 14, 14),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 32,
              ),
              onTap: () {
                setState(() {
                  screen = HomeScreen();
                });

                Navigator.of(context).pop();
              },
            ),
            DrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'this is the drawer menu',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 35,
                ),
                iconColor: Color.fromARGB(255, 193, 153, 153),
                title: Text('settings', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    screen = Settings();
                  });
                  Navigator.of(context).pop();
                }),
            ListTile(
                leading: Icon(
                  Icons.message,
                  size: 32,
                ),
                iconColor: Color.fromARGB(255, 212, 164, 164),
                title: Text('Messages', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    screen = Messageas();
                  });
                  Navigator.of(context).pop();
                }),
            ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 32,
                ),
                iconColor: Color.fromARGB(255, 162, 115, 115),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    screen = Profile();
                  });
                  Navigator.of(context).pop();
                }),
            ListTile(
                leading: Icon(
                  Icons.image,
                  size: 32,
                ),
                iconColor: Color.fromARGB(255, 162, 115, 115),
                title: Text('Images', style: TextStyle(color: Colors.white)),
                onTap: () {
                  setState(() {
                    screen = ImagePage();
                  });
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
      body: Center(
        child: screen,
      ),
    );
  }
}

class Messageas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('this is massages page');
  }
}

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Text('this is profile page');
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('this is settings page');
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('this is homescreen page');
  }
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List images = [
    'https://cdn.al-ain.com/lg/images/2021/6/29/133-233011-khartoum-bans-carrying-white-weapons-3.jpeg',
    'https://scontent.famm12-1.fna.fbcdn.net/v/t39.30808-6/233165452_2134461526694710_5217491475832971892_n.jpg?stp=dst-jpg_s640x640&_nc_cat=111&ccb=1-7&_nc_sid=833d8c&_nc_ohc=nLQYNVjOfOAQ7kNvgFnm3dG&_nc_ht=scontent.famm12-1.fna&oh=00_AYByEekTaOtHKG2D8qtGqzCB_-VeWeuPgGzOx_36jqLL0w&oe=66A87446',
    'https://scontent.famm12-1.fna.fbcdn.net/v/t39.30808-6/329108601_861787248443550_3579316581189966679_n.jpg?stp=dst-jpg_p526x296&_nc_cat=108&ccb=1-7&_nc_sid=127cfc&_nc_ohc=3S5HaClyhzIQ7kNvgFz3_yD&_nc_ht=scontent.famm12-1.fna&oh=00_AYA1XfDnHIbP0G1HvlFolnw35PbHxYHcB47cBwVACWAbpA&oe=66A8848A',
    'https://scontent.famm12-1.fna.fbcdn.net/v/t39.30808-6/326814728_909750253671282_6090441149882776376_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_ohc=S7SzZ0dorlsQ7kNvgHFB2zS&_nc_ht=scontent.famm12-1.fna&gid=AVYgYTsU2KZdC6OaaDnfm6w&oh=00_AYCU1Y6zHNj_YdC_2lrzp3r8W0mMJlUpssuDgUvYPz2_ig&oe=66A88906',
    'https://scontent.famm12-1.fna.fbcdn.net/v/t31.18172-8/11025947_651096681685026_8034309496628007300_o.jpg?stp=dst-jpg_p180x540&_nc_cat=106&ccb=1-7&_nc_sid=0327a3&_nc_ohc=eI2-biMG4oUQ7kNvgEXvgzU&_nc_ht=scontent.famm12-1.fna&oh=00_AYD505ED0erpxH6URPl2Nld22Wfhi00jqo5DcxmusmNvtQ&oe=66C9F8FC',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                
                  setState(() {
                      if (currentIndex == 0) {
                    currentIndex = currentIndex;
                  }else{
                    currentIndex -= 1;
                  }
                  
                    
                  });
                },
                icon: Icon(Icons.arrow_back_ios)),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Image.network(
                    images[currentIndex],
                  ),
                  Container(
                    width: 50,
                    height: 25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.circle,
                          size: (images.length / .4),
                        );
                      },
                    ),
                  ),
                ],
              ),
              width: 200,
              height: 100,
            ),
            IconButton(
                onPressed: () {
                        setState(() {
                      if (currentIndex == images.length-1) {
                    currentIndex = currentIndex;
                  }else{
                    currentIndex += 1;
                  }
                  
                    
                  });
                },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ],
    );
  }
}*/

