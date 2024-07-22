import 'package:flutter/material.dart';



void main() {
  
}

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
      backgroundColor: Color.fromARGB(27, 250, 199, 144),
    );
  } //الكود الرئيسي لكل مشروع
}

class DrawerScreen extends StatefulWidget {
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
                    Text(
                      'this is the drawer menu',
                      style: TextStyle(color: Colors.white),
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
  @override
  Widget build(BuildContext context) {
    return Text('this is massages page');
  }
}

class Profile extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Text('this is profile page');
  }
}

class Settings extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Text('this is settings page');
  }
}

class HomeScreen extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Text('this is homescreen page');
  }
}
