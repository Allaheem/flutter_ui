import 'dart:ffi';

import 'package:flutter/material.dart';

class diverslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        elevation: 50,
        backgroundColor: Color.fromARGB(143, 0, 19, 21),
        toolbarHeight: 80,
        centerTitle: true,
        title: Transform.translate(
          offset: Offset(10.0, 10.0),
          child: Text(
            'Drivers List',
            style: TextStyle(
              color: Color.fromARGB(255, 214, 203, 102),
              fontSize: 25,
              letterSpacing: 3,
            ),
          ),
        ),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Text('Back' ,style: TextStyle(fontSize: 15),);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: const Color.fromARGB(255, 109, 102, 40),
                )),
            //    title: TextButton(onPressed: (){}, child:Text('Back'),),
            SizedBox(
              width: 0.03,
            ),
            GestureDetector(
              onTap: (){},
          child: TextButton(onPressed: (){},child:Text('Back',style: TextStyle(fontSize:15,color: Color.fromARGB(255, 109, 109, 36)),)),
            ),
          ],
        ),
      ),
      
     body: 
     
      TextButton(onPressed: (){},child: Text('Sort By',style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 115, 104, 0)),),),
backgroundColor: Color.fromARGB(197, 8, 0, 41),
         bottomNavigationBar: BottomNavigationBar(
          
    items: [
      BottomNavigationBarItem(backgroundColor: Color.fromRGBO(16, 0, 36, 1),
        icon: Icon(Icons.home,color: const Color.fromARGB(255, 97, 97, 2),size: 30,),
        label: 'home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search,color: const Color.fromARGB(255, 100, 100, 5),size: 30,),
        label: 'search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message,color: const Color.fromARGB(255, 93, 93, 4),size: 30,),
        label: 'mwssage',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history,color: const Color.fromARGB(255, 113, 113, 4),size: 30,),
        label: 'history',
      ),
    ],
  ), 
          
    ); 
  }
}
