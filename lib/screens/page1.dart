import 'package:flutter/material.dart';

void main() {}



class Gun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 30,
        title: const Text("A Weapon"), 
        centerTitle: true,
        backgroundColor: Colors.red,
        leading:IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size:30,color:Color.fromARGB(255, 30, 2, 0))),
        
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.message,size:30 ,color: Colors.black,)),
          
          
          
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size:30 ,color: Colors.black)
          )          
          
          
          ],

        
      ),
  
     body:const Center(
       child: Text('A Weapon 👋',
       style: TextStyle(fontSize:40),
       
       ),
     ),

    );
  }
}